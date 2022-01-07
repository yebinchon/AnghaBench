
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_9__ {int mutex; int mallocFailed; int pErr; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {int doingRerun; scalar_t__ expired; int rc; int zErrMsg; int isPrepareV2; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 scalar_t__ ALWAYS (int ) ;
 int SQLITE_MAX_SCHEMA_RETRY ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_SCHEMA ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3DbFree (TYPE_1__*,int ) ;
 int sqlite3DbStrDup (TYPE_1__*,char const*) ;
 int sqlite3Reprepare (TYPE_2__*) ;
 int sqlite3Step (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_value_text (int ) ;
 scalar_t__ vdbeSafetyNotNull (TYPE_2__*) ;

int sqlite3_step(sqlite3_stmt *pStmt){
  int rc = SQLITE_OK;
  int rc2 = SQLITE_OK;
  Vdbe *v = (Vdbe*)pStmt;
  int cnt = 0;
  sqlite3 *db;

  if( vdbeSafetyNotNull(v) ){
    return SQLITE_MISUSE_BKPT;
  }
  db = v->db;
  sqlite3_mutex_enter(db->mutex);
  v->doingRerun = 0;
  while( (rc = sqlite3Step(v))==SQLITE_SCHEMA
         && cnt++ < SQLITE_MAX_SCHEMA_RETRY
         && (rc2 = rc = sqlite3Reprepare(v))==SQLITE_OK ){
    sqlite3_reset(pStmt);
    v->doingRerun = 1;
    assert( v->expired==0 );
  }
  if( rc2!=SQLITE_OK && ALWAYS(v->isPrepareV2) && ALWAYS(db->pErr) ){
    const char *zErr = (const char *)sqlite3_value_text(db->pErr);
    sqlite3DbFree(db, v->zErrMsg);
    if( !db->mallocFailed ){
      v->zErrMsg = sqlite3DbStrDup(db, zErr);
      v->rc = rc2;
    } else {
      v->zErrMsg = 0;
      v->rc = rc = SQLITE_NOMEM;
    }
  }
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
