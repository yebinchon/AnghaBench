#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_11__ {int iOverflow; } ;
struct TYPE_10__ {scalar_t__* aData; scalar_t__ isInit; int nCell; int maskPage; int hdrOffset; int /*<<< orphan*/  pDbPage; TYPE_1__* pBt; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellInfo ;

/* Variables and functions */
 scalar_t__ PTRMAP_BTREE ; 
 scalar_t__ PTRMAP_OVERFLOW1 ; 
 scalar_t__ PTRMAP_OVERFLOW2 ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__*,TYPE_3__*) ; 
 scalar_t__* FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(MemPage *pPage, Pgno iFrom, Pgno iTo, u8 eType){
  FUNC0( FUNC7(pPage->pBt->mutex) );
  FUNC0( FUNC6(pPage->pDbPage) );
  if( eType==PTRMAP_OVERFLOW2 ){
    /* The pointer is always the first 4 bytes of the page in this case.  */
    if( FUNC4(pPage->aData)!=iFrom ){
      return SQLITE_CORRUPT_BKPT;
    }
    FUNC5(pPage->aData, iTo);
  }else{
    u8 isInitOrig = pPage->isInit;
    int i;
    int nCell;

    FUNC1(pPage);
    nCell = pPage->nCell;

    for(i=0; i<nCell; i++){
      u8 *pCell = FUNC3(pPage, i);
      if( eType==PTRMAP_OVERFLOW1 ){
        CellInfo info;
        FUNC2(pPage, pCell, &info);
        if( info.iOverflow
         && pCell+info.iOverflow+3<=pPage->aData+pPage->maskPage
         && iFrom==FUNC4(&pCell[info.iOverflow])
        ){
          FUNC5(&pCell[info.iOverflow], iTo);
          break;
        }
      }else{
        if( FUNC4(pCell)==iFrom ){
          FUNC5(pCell, iTo);
          break;
        }
      }
    }
  
    if( i==nCell ){
      if( eType!=PTRMAP_BTREE || 
          FUNC4(&pPage->aData[pPage->hdrOffset+8])!=iFrom ){
        return SQLITE_CORRUPT_BKPT;
      }
      FUNC5(&pPage->aData[pPage->hdrOffset+8], iTo);
    }

    pPage->isInit = isInitOrig;
  }
  return SQLITE_OK;
}