
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_8__ {int errMask; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;


 int SQLITE_OK ;
 int assert (int) ;
 int checkProfileCallback (TYPE_1__*,TYPE_2__*) ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3VdbeReset (TYPE_2__*) ;
 int sqlite3VdbeRewind (TYPE_2__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_reset(sqlite3_stmt *pStmt){
  int rc;
  if( pStmt==0 ){
    rc = SQLITE_OK;
  }else{
    Vdbe *v = (Vdbe*)pStmt;
    sqlite3 *db = v->db;
    sqlite3_mutex_enter(db->mutex);
    checkProfileCallback(db, v);
    rc = sqlite3VdbeReset(v);
    sqlite3VdbeRewind(v);
    assert( (rc & (db->errMask))==rc );
    rc = sqlite3ApiExit(db, rc);
    sqlite3_mutex_leave(db->mutex);
  }
  return rc;
}
