
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xWalCallback ) (void*,TYPE_1__*,char const*,int) ;int mutex; void* pWalArg; } ;
typedef TYPE_1__ sqlite3 ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void *sqlite3_wal_hook(
  sqlite3 *db,
  int(*xCallback)(void *, sqlite3*, const char*, int),
  void *pArg
){

  void *pRet;
  sqlite3_mutex_enter(db->mutex);
  pRet = db->pWalArg;
  db->xWalCallback = xCallback;
  db->pWalArg = pArg;
  sqlite3_mutex_leave(db->mutex);
  return pRet;



}
