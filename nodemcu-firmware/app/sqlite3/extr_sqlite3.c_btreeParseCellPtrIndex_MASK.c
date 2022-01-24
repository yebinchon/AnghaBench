#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  void* u16 ;
struct TYPE_10__ {int nKey; int nPayload; int* pPayload; int nSize; void* nLocal; } ;
struct TYPE_9__ {int leaf; scalar_t__ intKeyLeaf; int childPtrSize; int maxLocal; TYPE_1__* pBt; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(
  MemPage *pPage,         /* Page containing the cell */
  u8 *pCell,              /* Pointer to the cell text. */
  CellInfo *pInfo         /* Fill in this structure */
){
  u8 *pIter;              /* For scanning through pCell */
  u32 nPayload;           /* Number of bytes of cell payload */

  FUNC0( FUNC2(pPage->pBt->mutex) );
  FUNC0( pPage->leaf==0 || pPage->leaf==1 );
  FUNC0( pPage->intKeyLeaf==0 );
  pIter = pCell + pPage->childPtrSize;
  nPayload = *pIter;
  if( nPayload>=0x80 ){
    u8 *pEnd = &pIter[8];
    nPayload &= 0x7f;
    do{
      nPayload = (nPayload<<7) | (*++pIter & 0x7f);
    }while( *(pIter)>=0x80 && pIter<pEnd );
  }
  pIter++;
  pInfo->nKey = nPayload;
  pInfo->nPayload = nPayload;
  pInfo->pPayload = pIter;
  FUNC3( nPayload==pPage->maxLocal );
  FUNC3( nPayload==pPage->maxLocal+1 );
  if( nPayload<=pPage->maxLocal ){
    /* This is the (easy) common case where the entire payload fits
    ** on the local page.  No overflow is required.
    */
    pInfo->nSize = nPayload + (u16)(pIter - pCell);
    if( pInfo->nSize<4 ) pInfo->nSize = 4;
    pInfo->nLocal = (u16)nPayload;
  }else{
    FUNC1(pPage, pCell, pInfo);
  }
}