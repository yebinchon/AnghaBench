
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef scalar_t__ tableType_t ;


 int LZ4_HASHLOG ;
 scalar_t__ LZ4_isLittleEndian () ;
 scalar_t__ const byut16 ;

__attribute__((used)) static ut32 LZ4_hash5(ut64 sequence, tableType_t const tableType) {
 static const ut64 prime5bytes = 889523592379ULL;
 static const ut64 prime8bytes = 11400714785074694791ULL;
 const ut32 hashLog = (tableType == byut16) ? LZ4_HASHLOG+1 : LZ4_HASHLOG;
 if (LZ4_isLittleEndian()) {
  return (ut32)(((sequence << 24) * prime5bytes) >> (64 - hashLog));
 }
 return (ut32)(((sequence >> 24) * prime8bytes) >> (64 - hashLog));
}
