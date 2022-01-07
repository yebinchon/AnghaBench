
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int php_ifd_get32s(void *Long, int motorola_intel)
{
 if (motorola_intel) {
  return ((( char *)Long)[0] << 24) | (((unsigned char *)Long)[1] << 16)
        | (((unsigned char *)Long)[2] << 8 ) | (((unsigned char *)Long)[3] << 0 );
 } else {
  return ((( char *)Long)[3] << 24) | (((unsigned char *)Long)[2] << 16)
        | (((unsigned char *)Long)[1] << 8 ) | (((unsigned char *)Long)[0] << 0 );
 }
}
