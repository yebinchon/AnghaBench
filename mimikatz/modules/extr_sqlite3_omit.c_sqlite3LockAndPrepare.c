
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_stmt ;
struct TYPE_9__ {int errMask; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;


 int SQLITE_ERROR_RETRY ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_SCHEMA ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3BtreeEnterAll (TYPE_1__*) ;
 int sqlite3BtreeLeaveAll (TYPE_1__*) ;
 int sqlite3Prepare (TYPE_1__*,char const*,int,int ,int *,int **,char const**) ;
 int sqlite3ResetOneSchema (TYPE_1__*,int) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int sqlite3LockAndPrepare(
  sqlite3 *db,
  const char *zSql,
  int nBytes,
  u32 prepFlags,
  Vdbe *pOld,
  sqlite3_stmt **ppStmt,
  const char **pzTail
){
  int rc;
  int cnt = 0;




  *ppStmt = 0;
  if( !sqlite3SafetyCheckOk(db)||zSql==0 ){
    return SQLITE_MISUSE_BKPT;
  }
  sqlite3_mutex_enter(db->mutex);
  sqlite3BtreeEnterAll(db);
  do{



    rc = sqlite3Prepare(db, zSql, nBytes, prepFlags, pOld, ppStmt, pzTail);
    assert( rc==SQLITE_OK || *ppStmt==0 );
  }while( rc==SQLITE_ERROR_RETRY
       || (rc==SQLITE_SCHEMA && (sqlite3ResetOneSchema(db,-1), cnt++)==0) );
  sqlite3BtreeLeaveAll(db);
  rc = sqlite3ApiExit(db, rc);
  assert( (rc&db->errMask)==rc );
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
