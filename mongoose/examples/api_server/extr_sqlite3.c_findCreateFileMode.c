
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_gid; scalar_t__ st_uid; } ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;


 int MAX_PATHNAME ;
 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_WAL ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ osStat (char*,struct stat*) ;
 scalar_t__ sqlite3Isalnum (char const) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static int findCreateFileMode(
  const char *zPath,
  int flags,
  mode_t *pMode,
  uid_t *pUid,
  gid_t *pGid
){
  int rc = SQLITE_OK;
  *pMode = 0;
  *pUid = 0;
  *pGid = 0;
  if( flags & (SQLITE_OPEN_WAL|SQLITE_OPEN_MAIN_JOURNAL) ){
    char zDb[MAX_PATHNAME+1];
    int nDb;
    struct stat sStat;
    nDb = sqlite3Strlen30(zPath) - 1;




    while( zPath[nDb]!='-' ){
      assert( nDb>0 );
      assert( zPath[nDb]!='\n' );
      nDb--;
    }

    memcpy(zDb, zPath, nDb);
    zDb[nDb] = '\0';

    if( 0==osStat(zDb, &sStat) ){
      *pMode = sStat.st_mode & 0777;
      *pUid = sStat.st_uid;
      *pGid = sStat.st_gid;
    }else{
      rc = SQLITE_IOERR_FSTAT;
    }
  }else if( flags & SQLITE_OPEN_DELETEONCLOSE ){
    *pMode = 0600;
  }
  return rc;
}
