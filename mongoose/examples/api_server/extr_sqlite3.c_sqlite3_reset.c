
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {TYPE_4__* db; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_6__ {int errMask; int mutex; } ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_4__*,int) ;
 int sqlite3VdbeReset (TYPE_1__*) ;
 int sqlite3VdbeRewind (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_reset(sqlite3_stmt *pStmt){
  int rc;
  if( pStmt==0 ){
    rc = SQLITE_OK;
  }else{
    Vdbe *v = (Vdbe*)pStmt;
    sqlite3_mutex_enter(v->db->mutex);
    rc = sqlite3VdbeReset(v);
    sqlite3VdbeRewind(v);
    assert( (rc & (v->db->errMask))==rc );
    rc = sqlite3ApiExit(v->db, rc);
    sqlite3_mutex_leave(v->db->mutex);
  }
  return rc;
}
