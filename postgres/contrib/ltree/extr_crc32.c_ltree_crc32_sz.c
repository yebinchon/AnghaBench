
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_crc32 ;


 int COMP_TRADITIONAL_CRC32 (scalar_t__,char*,int) ;
 int FIN_TRADITIONAL_CRC32 (scalar_t__) ;
 int INIT_TRADITIONAL_CRC32 (scalar_t__) ;
 scalar_t__ TOLOWER (char) ;

unsigned int
ltree_crc32_sz(char *buf, int size)
{
 pg_crc32 crc;
 char *p = buf;

 INIT_TRADITIONAL_CRC32(crc);
 while (size > 0)
 {
  char c = (char) TOLOWER(*p);

  COMP_TRADITIONAL_CRC32(crc, &c, 1);
  size--;
  p++;
 }
 FIN_TRADITIONAL_CRC32(crc);
 return (unsigned int) crc;
}
