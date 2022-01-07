
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ut32 ;
typedef scalar_t__ tableType_t ;


 int LZ4_HASHLOG ;
 int MINMATCH ;
 scalar_t__ const byut16 ;

__attribute__((used)) static ut32 LZ4_hash4(ut32 sequence, tableType_t const tableType) {
 if (tableType == byut16) {
  return ((sequence * 2654435761U) >> ((MINMATCH*8)-(LZ4_HASHLOG+1)));
 }
 return ((sequence * 2654435761U) >> ((MINMATCH*8)-LZ4_HASHLOG));
}
