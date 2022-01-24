#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_16__ {int usableSize; int /*<<< orphan*/  mutex; } ;
struct TYPE_15__ {int iOverflow; int nPayload; int nLocal; } ;
struct TYPE_14__ {unsigned char* aData; int maskPage; int /*<<< orphan*/  pDbPage; TYPE_3__* pBt; } ;
typedef  int Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellInfo ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char*,TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_1__*,int) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (TYPE_3__*,int,TYPE_1__**,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(MemPage *pPage, unsigned char *pCell){
  BtShared *pBt = pPage->pBt;
  CellInfo info;
  Pgno ovflPgno;
  int rc;
  int nOvfl;
  u32 ovflPageSize;

  FUNC0( FUNC9(pPage->pBt->mutex) );
  FUNC3(pPage, pCell, &info);
  if( info.iOverflow==0 ){
    return SQLITE_OK;  /* No overflow pages. Return without doing anything */
  }
  if( pCell+info.iOverflow+3 > pPage->aData+pPage->maskPage ){
    return SQLITE_CORRUPT_BKPT;  /* Cell extends past end of page */
  }
  ovflPgno = FUNC5(&pCell[info.iOverflow]);
  FUNC0( pBt->usableSize > 4 );
  ovflPageSize = pBt->usableSize - 4;
  nOvfl = (info.nPayload - info.nLocal + ovflPageSize - 1)/ovflPageSize;
  FUNC0( ovflPgno==0 || nOvfl>0 );
  while( nOvfl-- ){
    Pgno iNext = 0;
    MemPage *pOvfl = 0;
    if( ovflPgno<2 || ovflPgno>FUNC2(pBt) ){
      /* 0 is not a legal page number and page 1 cannot be an 
      ** overflow page. Therefore if ovflPgno<2 or past the end of the 
      ** file the database must be corrupt. */
      return SQLITE_CORRUPT_BKPT;
    }
    if( nOvfl ){
      rc = FUNC6(pBt, ovflPgno, &pOvfl, &iNext);
      if( rc ) return rc;
    }

    if( ( pOvfl || ((pOvfl = FUNC1(pBt, ovflPgno))!=0) )
     && FUNC7(pOvfl->pDbPage)!=1
    ){
      /* There is no reason any cursor should have an outstanding reference 
      ** to an overflow page belonging to a cell that is being deleted/updated.
      ** So if there exists more than one reference to this page, then it 
      ** must not really be an overflow page and the database must be corrupt. 
      ** It is helpful to detect this before calling freePage2(), as 
      ** freePage2() may zero the page contents if secure-delete mode is
      ** enabled. If this 'overflow' page happens to be a page that the
      ** caller is iterating through or using in some other way, this
      ** can be problematic.
      */
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      rc = FUNC4(pBt, pOvfl, ovflPgno);
    }

    if( pOvfl ){
      FUNC8(pOvfl->pDbPage);
    }
    if( rc ) return rc;
    ovflPgno = iNext;
  }
  return SQLITE_OK;
}