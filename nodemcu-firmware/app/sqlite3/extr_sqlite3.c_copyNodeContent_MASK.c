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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ usableSize; } ;
struct TYPE_7__ {int hdrOffset; int pgno; int isInit; int const nFree; int nCell; scalar_t__ cellOffset; int /*<<< orphan*/ * aData; TYPE_2__* pBt; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 scalar_t__ ISAUTOVACUUM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(MemPage *pFrom, MemPage *pTo, int *pRC){
  if( (*pRC)==SQLITE_OK ){
    BtShared * const pBt = pFrom->pBt;
    u8 * const aFrom = pFrom->aData;
    u8 * const aTo = pTo->aData;
    int const iFromHdr = pFrom->hdrOffset;
    int const iToHdr = ((pTo->pgno==1) ? 100 : 0);
    int rc;
    int iData;


    FUNC0( pFrom->isInit );
    FUNC0( pFrom->nFree>=iToHdr );
    FUNC0( FUNC2(&aFrom[iFromHdr+5]) <= (int)pBt->usableSize );

    /* Copy the b-tree node content from page pFrom to page pTo. */
    iData = FUNC2(&aFrom[iFromHdr+5]);
    FUNC3(&aTo[iData], &aFrom[iData], pBt->usableSize-iData);
    FUNC3(&aTo[iToHdr], &aFrom[iFromHdr], pFrom->cellOffset + 2*pFrom->nCell);

    /* Reinitialize page pTo so that the contents of the MemPage structure
    ** match the new data. The initialization of pTo can actually fail under
    ** fairly obscure circumstances, even though it is a copy of initialized
    ** page pFrom.
    */
    pTo->isInit = 0;
    rc = FUNC1(pTo);
    if( rc!=SQLITE_OK ){
      *pRC = rc;
      return;
    }

    /* If this is an auto-vacuum database, update the pointer-map entries
    ** for any b-tree or overflow pages that pTo now contains the pointers to.
    */
    if( ISAUTOVACUUM ){
      *pRC = FUNC4(pTo);
    }
  }
}