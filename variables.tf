variable "region" {
  type = string
  description = "AWS region."
  default = "us-east-1"
}

variable "prefix" {
  type = string
  description = "Naming prefix."
}

variable "vpc_cidr" {
  type = string
  description = "VPC CIDR block."
  default = "10.0.0.0/16"
}

variable "container_name" {
  type = string
  description = "Name of container"
  default = "ecsdemo-frontend"
}

variable "container_port" {
  type = number
  description = "Port on which container will listen."
  default = 3000
}

variable "global_tags" {
  type        = map(string)
  description = "Default tags to apply to AWS resources. Meant to be defined via Variable Sets in your Terraform Cloud organization, but can be overriden if needed."
  default     = {}
}

variable "local_tags" {
  type        = map(string)
  description = "Local tags to apply to cloud resources."
  default     = {}
}