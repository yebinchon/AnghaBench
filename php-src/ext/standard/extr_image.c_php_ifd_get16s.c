
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ php_ifd_get16u (void*,int) ;

__attribute__((used)) static signed short php_ifd_get16s(void *Short, int motorola_intel)
{
 return (signed short)php_ifd_get16u(Short, motorola_intel);
}
