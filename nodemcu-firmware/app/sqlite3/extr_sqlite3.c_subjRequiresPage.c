
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nSavepoint; TYPE_2__* aSavepoint; } ;
struct TYPE_6__ {scalar_t__ nOrig; int pInSavepoint; } ;
struct TYPE_5__ {scalar_t__ pgno; TYPE_3__* pPager; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ PagerSavepoint ;
typedef TYPE_3__ Pager ;


 scalar_t__ sqlite3BitvecTestNotNull (int ,scalar_t__) ;

__attribute__((used)) static int subjRequiresPage(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  PagerSavepoint *p;
  Pgno pgno = pPg->pgno;
  int i;
  for(i=0; i<pPager->nSavepoint; i++){
    p = &pPager->aSavepoint[i];
    if( p->nOrig>=pgno && 0==sqlite3BitvecTestNotNull(p->pInSavepoint, pgno) ){
      return 1;
    }
  }
  return 0;
}
