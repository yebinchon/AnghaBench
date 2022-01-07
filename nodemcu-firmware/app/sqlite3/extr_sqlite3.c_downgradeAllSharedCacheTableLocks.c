
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eLock; TYPE_1__* pBtree; struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int btsFlags; TYPE_3__* pLock; TYPE_1__* pWriter; } ;
struct TYPE_5__ {TYPE_2__* pBt; } ;
typedef TYPE_1__ Btree ;
typedef TYPE_2__ BtShared ;
typedef TYPE_3__ BtLock ;


 int BTS_EXCLUSIVE ;
 int BTS_PENDING ;
 scalar_t__ READ_LOCK ;
 int assert (int) ;

__attribute__((used)) static void downgradeAllSharedCacheTableLocks(Btree *p){
  BtShared *pBt = p->pBt;
  if( pBt->pWriter==p ){
    BtLock *pLock;
    pBt->pWriter = 0;
    pBt->btsFlags &= ~(BTS_EXCLUSIVE|BTS_PENDING);
    for(pLock=pBt->pLock; pLock; pLock=pLock->pNext){
      assert( pLock->eLock==READ_LOCK || pLock->pBtree==p );
      pLock->eLock = READ_LOCK;
    }
  }
}
