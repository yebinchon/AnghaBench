
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;
struct TYPE_3__ {TYPE_2__* db; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_4__ {int mutex; scalar_t__* aLimit; } ;


 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_TOOBIG ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_2__*,int) ;
 int sqlite3_bind_zeroblob (int *,int,int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_bind_zeroblob64(sqlite3_stmt *pStmt, int i, sqlite3_uint64 n){
  int rc;
  Vdbe *p = (Vdbe *)pStmt;
  sqlite3_mutex_enter(p->db->mutex);
  if( n>(u64)p->db->aLimit[SQLITE_LIMIT_LENGTH] ){
    rc = SQLITE_TOOBIG;
  }else{
    assert( (n & 0x7FFFFFFF)==n );
    rc = sqlite3_bind_zeroblob(pStmt, i, n);
  }
  rc = sqlite3ApiExit(p->db, rc);
  sqlite3_mutex_leave(p->db->mutex);
  return rc;
}
