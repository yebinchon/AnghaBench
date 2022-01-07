
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_CHECKPOINT_FULL ;
 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_CHECKPOINT_RESTART ;
 int SQLITE_ERROR ;
 int SQLITE_MAX_ATTACHED ;
 int SQLITE_MISUSE ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3Checkpoint (TYPE_1__*,int,int,int*,int*) ;
 int sqlite3Error (TYPE_1__*,int,char*,...) ;
 int sqlite3FindDbName (TYPE_1__*,char const*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_wal_checkpoint_v2(
  sqlite3 *db,
  const char *zDb,
  int eMode,
  int *pnLog,
  int *pnCkpt
){



  int rc;
  int iDb = SQLITE_MAX_ATTACHED;


  if( pnLog ) *pnLog = -1;
  if( pnCkpt ) *pnCkpt = -1;

  assert( SQLITE_CHECKPOINT_FULL>SQLITE_CHECKPOINT_PASSIVE );
  assert( SQLITE_CHECKPOINT_FULL<SQLITE_CHECKPOINT_RESTART );
  assert( SQLITE_CHECKPOINT_PASSIVE+2==SQLITE_CHECKPOINT_RESTART );
  if( eMode<SQLITE_CHECKPOINT_PASSIVE || eMode>SQLITE_CHECKPOINT_RESTART ){
    return SQLITE_MISUSE;
  }

  sqlite3_mutex_enter(db->mutex);
  if( zDb && zDb[0] ){
    iDb = sqlite3FindDbName(db, zDb);
  }
  if( iDb<0 ){
    rc = SQLITE_ERROR;
    sqlite3Error(db, SQLITE_ERROR, "unknown database: %s", zDb);
  }else{
    rc = sqlite3Checkpoint(db, iDb, eMode, pnLog, pnCkpt);
    sqlite3Error(db, rc, 0);
  }
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;

}
