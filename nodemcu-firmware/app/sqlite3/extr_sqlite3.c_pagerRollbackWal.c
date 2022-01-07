
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pPCache; int pWal; int dbOrigSize; int dbSize; } ;
struct TYPE_5__ {int pgno; struct TYPE_5__* pDirty; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int SQLITE_OK ;
 int pagerUndoCallback (void*,int ) ;
 TYPE_1__* sqlite3PcacheDirtyList (int ) ;
 int sqlite3WalUndo (int ,int (*) (void*,int ),void*) ;

__attribute__((used)) static int pagerRollbackWal(Pager *pPager){
  int rc;
  PgHdr *pList;
  pPager->dbSize = pPager->dbOrigSize;
  rc = sqlite3WalUndo(pPager->pWal, pagerUndoCallback, (void *)pPager);
  pList = sqlite3PcacheDirtyList(pPager->pPCache);
  while( pList && rc==SQLITE_OK ){
    PgHdr *pNext = pList->pDirty;
    rc = pagerUndoCallback((void *)pPager, pList->pgno);
    pList = pNext;
  }

  return rc;
}
