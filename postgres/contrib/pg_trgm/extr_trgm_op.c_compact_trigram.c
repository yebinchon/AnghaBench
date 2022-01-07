
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef char pg_crc32 ;


 int COMP_LEGACY_CRC32 (char,char*,int) ;
 int CPTRGM (int *,char*) ;
 int FIN_LEGACY_CRC32 (char) ;
 int INIT_LEGACY_CRC32 (char) ;

void
compact_trigram(trgm *tptr, char *str, int bytelen)
{
 if (bytelen == 3)
 {
  CPTRGM(tptr, str);
 }
 else
 {
  pg_crc32 crc;

  INIT_LEGACY_CRC32(crc);
  COMP_LEGACY_CRC32(crc, str, bytelen);
  FIN_LEGACY_CRC32(crc);




  CPTRGM(tptr, &crc);
 }
}
