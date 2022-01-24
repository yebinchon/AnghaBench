#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pBt; int /*<<< orphan*/  pPager; scalar_t__ mxErr; } ;
struct TYPE_7__ {scalar_t__ autoVacuum; scalar_t__ usableSize; } ;
typedef  int Pgno ;
typedef  TYPE_2__ IntegrityCk ;
typedef  int /*<<< orphan*/  DbPage ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_FREEPAGE ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,char*) ; 
 int FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  IntegrityCk *pCheck,  /* Integrity checking context */
  int isFreeList,       /* True for a freelist.  False for overflow page list */
  int iPage,            /* Page number for first page in the list */
  int N,                /* Expected number of pages in the list */
  char *zContext        /* Context for error messages */
){
  int i;
  int expected = N;
  int iFirst = iPage;
  while( N-- > 0 && pCheck->mxErr ){
    DbPage *pOvflPage;
    unsigned char *pOvflData;
    if( iPage<1 ){
      FUNC0(pCheck, zContext,
         "%d of %d pages missing from overflow list starting at %d",
          N+1, expected, iFirst);
      break;
    }
    if( FUNC2(pCheck, iPage, zContext) ) break;
    if( FUNC4(pCheck->pPager, (Pgno)iPage, &pOvflPage) ){
      FUNC0(pCheck, zContext, "failed to get page %d", iPage);
      break;
    }
    pOvflData = (unsigned char *)FUNC5(pOvflPage);
    if( isFreeList ){
      int n = FUNC3(&pOvflData[4]);
#ifndef SQLITE_OMIT_AUTOVACUUM
      if( pCheck->pBt->autoVacuum ){
        FUNC1(pCheck, iPage, PTRMAP_FREEPAGE, 0, zContext);
      }
#endif
      if( n>(int)pCheck->pBt->usableSize/4-2 ){
        FUNC0(pCheck, zContext,
           "freelist leaf count too big on page %d", iPage);
        N--;
      }else{
        for(i=0; i<n; i++){
          Pgno iFreePage = FUNC3(&pOvflData[8+i*4]);
#ifndef SQLITE_OMIT_AUTOVACUUM
          if( pCheck->pBt->autoVacuum ){
            FUNC1(pCheck, iFreePage, PTRMAP_FREEPAGE, 0, zContext);
          }
#endif
          FUNC2(pCheck, iFreePage, zContext);
        }
        N -= n;
      }
    }
#ifndef SQLITE_OMIT_AUTOVACUUM
    else{
      /* If this database supports auto-vacuum and iPage is not the last
      ** page in this overflow list, check that the pointer-map entry for
      ** the following page matches iPage.
      */
      if( pCheck->pBt->autoVacuum && N>0 ){
        i = FUNC3(pOvflData);
        FUNC1(pCheck, i, PTRMAP_OVERFLOW2, iPage, zContext);
      }
    }
#endif
    iPage = FUNC3(pOvflData);
    FUNC6(pOvflPage);
  }
}