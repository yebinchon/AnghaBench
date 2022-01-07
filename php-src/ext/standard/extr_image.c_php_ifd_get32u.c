
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ php_ifd_get32s (void*,int) ;

__attribute__((used)) static unsigned php_ifd_get32u(void *Long, int motorola_intel)
{
 return (unsigned)php_ifd_get32s(Long, motorola_intel) & 0xffffffff;
}
