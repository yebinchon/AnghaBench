
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cyg_uint32 ;


 int cyg_ether_crc32_accumulate (int ,unsigned char*,int) ;

cyg_uint32
cyg_ether_crc32(unsigned char *s, int len)
{
  return cyg_ether_crc32_accumulate(0,s,len);
}
