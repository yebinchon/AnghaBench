
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nSavepoint; TYPE_1__* aSavepoint; } ;
struct TYPE_4__ {scalar_t__ nOrig; int pInSavepoint; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ PagerSavepoint ;
typedef TYPE_2__ Pager ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BitvecSet (int ,scalar_t__) ;
 int testcase (int) ;

__attribute__((used)) static int addToSavepointBitvecs(Pager *pPager, Pgno pgno){
  int ii;
  int rc = SQLITE_OK;

  for(ii=0; ii<pPager->nSavepoint; ii++){
    PagerSavepoint *p = &pPager->aSavepoint[ii];
    if( pgno<=p->nOrig ){
      rc |= sqlite3BitvecSet(p->pInSavepoint, pgno);
      testcase( rc==SQLITE_NOMEM );
      assert( rc==SQLITE_OK || rc==SQLITE_NOMEM );
    }
  }
  return rc;
}
