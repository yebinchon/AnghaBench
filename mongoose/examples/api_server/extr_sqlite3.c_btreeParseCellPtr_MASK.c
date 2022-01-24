#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {int nKey; int nData; int nPayload; int nHeader; int nSize; int nLocal; int iOverflow; int /*<<< orphan*/ * pCell; } ;
struct TYPE_7__ {int leaf; int childPtrSize; int maxLocal; int minLocal; TYPE_1__* pBt; scalar_t__ hasData; scalar_t__ intKey; } ;
struct TYPE_6__ {int usableSize; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(
  MemPage *pPage,         /* Page containing the cell */
  u8 *pCell,              /* Pointer to the cell text. */
  CellInfo *pInfo         /* Fill in this structure */
){
  u16 n;                  /* Number bytes in cell content header */
  u32 nPayload;           /* Number of bytes of cell payload */

  FUNC0( FUNC4(pPage->pBt->mutex) );

  pInfo->pCell = pCell;
  FUNC0( pPage->leaf==0 || pPage->leaf==1 );
  n = pPage->childPtrSize;
  FUNC0( n==4-4*pPage->leaf );
  if( pPage->intKey ){
    if( pPage->hasData ){
      n += FUNC2(&pCell[n], nPayload);
    }else{
      nPayload = 0;
    }
    n += FUNC1(&pCell[n], (u64*)&pInfo->nKey);
    pInfo->nData = nPayload;
  }else{
    pInfo->nData = 0;
    n += FUNC2(&pCell[n], nPayload);
    pInfo->nKey = nPayload;
  }
  pInfo->nPayload = nPayload;
  pInfo->nHeader = n;
  FUNC5( nPayload==pPage->maxLocal );
  FUNC5( nPayload==pPage->maxLocal+1 );
  if( FUNC3(nPayload<=pPage->maxLocal) ){
    /* This is the (easy) common case where the entire payload fits
    ** on the local page.  No overflow is required.
    */
    if( (pInfo->nSize = (u16)(n+nPayload))<4 ) pInfo->nSize = 4;
    pInfo->nLocal = (u16)nPayload;
    pInfo->iOverflow = 0;
  }else{
    /* If the payload will not fit completely on the local page, we have
    ** to decide how much to store locally and how much to spill onto
    ** overflow pages.  The strategy is to minimize the amount of unused
    ** space on overflow pages while keeping the amount of local storage
    ** in between minLocal and maxLocal.
    **
    ** Warning:  changing the way overflow payload is distributed in any
    ** way will result in an incompatible file format.
    */
    int minLocal;  /* Minimum amount of payload held locally */
    int maxLocal;  /* Maximum amount of payload held locally */
    int surplus;   /* Overflow payload available for local storage */

    minLocal = pPage->minLocal;
    maxLocal = pPage->maxLocal;
    surplus = minLocal + (nPayload - minLocal)%(pPage->pBt->usableSize - 4);
    FUNC5( surplus==maxLocal );
    FUNC5( surplus==maxLocal+1 );
    if( surplus <= maxLocal ){
      pInfo->nLocal = (u16)surplus;
    }else{
      pInfo->nLocal = (u16)minLocal;
    }
    pInfo->iOverflow = (u16)(pInfo->nLocal + n);
    pInfo->nSize = pInfo->iOverflow + 4;
  }
}