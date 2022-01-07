
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t buffalo_csum(uint32_t csum, void *buf, unsigned long len)
{
 signed char *p = buf;

 while (len--) {
  int i;

  csum ^= *p++;
  for (i = 0; i < 8; i++)
   csum = (csum >> 1) ^ ((csum & 1) ? 0xedb88320ul : 0);
 }

 return csum;
}
