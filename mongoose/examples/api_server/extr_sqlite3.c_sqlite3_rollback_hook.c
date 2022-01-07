
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* xRollbackCallback ) (void*) ;int mutex; void* pRollbackArg; } ;
typedef TYPE_1__ sqlite3 ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void *sqlite3_rollback_hook(
  sqlite3 *db,
  void (*xCallback)(void*),
  void *pArg
){
  void *pRet;
  sqlite3_mutex_enter(db->mutex);
  pRet = db->pRollbackArg;
  db->xRollbackCallback = xCallback;
  db->pRollbackArg = pArg;
  sqlite3_mutex_leave(db->mutex);
  return pRet;
}
