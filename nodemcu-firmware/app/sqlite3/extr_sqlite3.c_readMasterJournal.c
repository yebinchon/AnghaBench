
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sqlite3_file ;
typedef int i64 ;


 int SQLITE_OK ;
 int aJournalMagic ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int read32bits (int *,int,int*) ;
 int sqlite3OsFileSize (int *,int*) ;
 int sqlite3OsRead (int *,...) ;

__attribute__((used)) static int readMasterJournal(sqlite3_file *pJrnl, char *zMaster, u32 nMaster){
  int rc;
  u32 len;
  i64 szJ;
  u32 cksum;
  u32 u;
  unsigned char aMagic[8];
  zMaster[0] = '\0';

  if( SQLITE_OK!=(rc = sqlite3OsFileSize(pJrnl, &szJ))
   || szJ<16
   || SQLITE_OK!=(rc = read32bits(pJrnl, szJ-16, &len))
   || len>=nMaster
   || len==0
   || SQLITE_OK!=(rc = read32bits(pJrnl, szJ-12, &cksum))
   || SQLITE_OK!=(rc = sqlite3OsRead(pJrnl, aMagic, 8, szJ-8))
   || memcmp(aMagic, aJournalMagic, 8)
   || SQLITE_OK!=(rc = sqlite3OsRead(pJrnl, zMaster, len, szJ-16-len))
  ){
    return rc;
  }


  for(u=0; u<len; u++){
    cksum -= zMaster[u];
  }
  if( cksum ){





    len = 0;
  }
  zMaster[len] = '\0';

  return SQLITE_OK;
}
