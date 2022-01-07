
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_crc32 ;


 int COMP_TRADITIONAL_CRC32 (int ,char*,int) ;
 int FIN_TRADITIONAL_CRC32 (int ) ;
 int INIT_TRADITIONAL_CRC32 (int ) ;

__attribute__((used)) static pg_crc32
crc32_sz(char *buf, int size)
{
 pg_crc32 crc;

 INIT_TRADITIONAL_CRC32(crc);
 COMP_TRADITIONAL_CRC32(crc, buf, size);
 FIN_TRADITIONAL_CRC32(crc);

 return crc;
}
