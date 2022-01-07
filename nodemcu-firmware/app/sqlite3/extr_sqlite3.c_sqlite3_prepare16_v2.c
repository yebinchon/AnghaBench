
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Prepare16 (int *,void const*,int,int,int **,void const**) ;

int sqlite3_prepare16_v2(
  sqlite3 *db,
  const void *zSql,
  int nBytes,
  sqlite3_stmt **ppStmt,
  const void **pzTail
){
  int rc;
  rc = sqlite3Prepare16(db,zSql,nBytes,1,ppStmt,pzTail);
  assert( rc==SQLITE_OK || ppStmt==0 || *ppStmt==0 );
  return rc;
}
