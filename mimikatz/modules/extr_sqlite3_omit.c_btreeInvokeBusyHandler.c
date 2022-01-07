
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int busyHandler; int mutex; } ;
struct TYPE_4__ {int pPager; TYPE_2__* db; } ;
typedef TYPE_1__ BtShared ;


 int assert (TYPE_2__*) ;
 int sqlite3InvokeBusyHandler (int *,int ) ;
 int sqlite3PagerFile (int ) ;
 TYPE_2__* sqlite3_mutex_held (int ) ;

__attribute__((used)) static int btreeInvokeBusyHandler(void *pArg){
  BtShared *pBt = (BtShared*)pArg;
  assert( pBt->db );
  assert( sqlite3_mutex_held(pBt->db->mutex) );
  return sqlite3InvokeBusyHandler(&pBt->db->busyHandler,
                                  sqlite3PagerFile(pBt->pPager));
}
