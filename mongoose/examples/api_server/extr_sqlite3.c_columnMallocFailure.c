
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {TYPE_2__* db; int rc; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_4__ {int mutex; } ;


 int sqlite3ApiExit (TYPE_2__*,int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static void columnMallocFailure(sqlite3_stmt *pStmt)
{





  Vdbe *p = (Vdbe *)pStmt;
  if( p ){
    p->rc = sqlite3ApiExit(p->db, p->rc);
    sqlite3_mutex_leave(p->db->mutex);
  }
}
