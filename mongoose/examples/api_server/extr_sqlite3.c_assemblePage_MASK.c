#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int usableSize; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int hdrOffset; scalar_t__ nOverflow; scalar_t__ nCell; int nFree; int /*<<< orphan*/ * aCellIdx; int /*<<< orphan*/  pDbPage; TYPE_3__* pBt; int /*<<< orphan*/ * aData; } ;
typedef  TYPE_1__ MemPage ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int const FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(
  MemPage *pPage,   /* The page to be assemblied */
  int nCell,        /* The number of cells to add to this page */
  u8 **apCell,      /* Pointers to cell bodies */
  u16 *aSize        /* Sizes of the cells */
){
  int i;            /* Loop counter */
  u8 *pCellptr;     /* Address of next cell pointer */
  int cellbody;     /* Address of next cell body */
  u8 * const data = pPage->aData;             /* Pointer to data for pPage */
  const int hdr = pPage->hdrOffset;           /* Offset of header on pPage */
  const int nUsable = pPage->pBt->usableSize; /* Usable size of page */

  FUNC1( pPage->nOverflow==0 );
  FUNC1( FUNC6(pPage->pBt->mutex) );
  FUNC1( nCell>=0 && nCell<=(int)FUNC0(pPage->pBt)
            && (int)FUNC0(pPage->pBt)<=10921);
  FUNC1( FUNC5(pPage->pDbPage) );

  /* Check that the page has just been zeroed by zeroPage() */
  FUNC1( pPage->nCell==0 );
  FUNC1( FUNC2(&data[hdr+5])==nUsable );

  pCellptr = &pPage->aCellIdx[nCell*2];
  cellbody = nUsable;
  for(i=nCell-1; i>=0; i--){
    u16 sz = aSize[i];
    pCellptr -= 2;
    cellbody -= sz;
    FUNC4(pCellptr, cellbody);
    FUNC3(&data[cellbody], apCell[i], sz);
  }
  FUNC4(&data[hdr+3], nCell);
  FUNC4(&data[hdr+5], cellbody);
  pPage->nFree -= (nCell*2 + nUsable - cellbody);
  pPage->nCell = (u16)nCell;
}