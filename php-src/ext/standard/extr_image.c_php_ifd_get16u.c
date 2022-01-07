
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int php_ifd_get16u(void *Short, int motorola_intel)
{
 if (motorola_intel) {
  return (((unsigned char *)Short)[0] << 8) | ((unsigned char *)Short)[1];
 } else {
  return (((unsigned char *)Short)[1] << 8) | ((unsigned char *)Short)[0];
 }
}
