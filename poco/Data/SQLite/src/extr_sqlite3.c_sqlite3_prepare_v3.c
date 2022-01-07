
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 unsigned int SQLITE_PREPARE_MASK ;
 unsigned int SQLITE_PREPARE_SAVESQL ;
 int assert (int) ;
 int sqlite3LockAndPrepare (int *,char const*,int,unsigned int,int ,int **,char const**) ;

int sqlite3_prepare_v3(
  sqlite3 *db,
  const char *zSql,
  int nBytes,
  unsigned int prepFlags,
  sqlite3_stmt **ppStmt,
  const char **pzTail
){
  int rc;







  rc = sqlite3LockAndPrepare(db,zSql,nBytes,
                 SQLITE_PREPARE_SAVESQL|(prepFlags&SQLITE_PREPARE_MASK),
                 0,ppStmt,pzTail);
  assert( rc==SQLITE_OK || ppStmt==0 || *ppStmt==0 );
  return rc;
}
