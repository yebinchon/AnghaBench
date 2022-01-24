#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int nCell; int hdrOffset; int nFree; int childPtrSize; TYPE_1__* pBt; scalar_t__* aCellIdx; scalar_t__* aData; int /*<<< orphan*/  pDbPage; } ;
struct TYPE_6__ {scalar_t__ usableSize; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int SQLITE_CORRUPT_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(MemPage *pPage, int idx, int sz, int *pRC){
  u32 pc;         /* Offset to cell content of cell being deleted */
  u8 *data;       /* pPage->aData */
  u8 *ptr;        /* Used to move bytes around within data[] */
  int rc;         /* The return code */
  int hdr;        /* Beginning of the header.  0 most pages.  100 page 1 */

  if( *pRC ) return;
  FUNC0( idx>=0 && idx<pPage->nCell );
  FUNC0( CORRUPT_DB || sz==FUNC1(pPage, idx) );
  FUNC0( FUNC7(pPage->pDbPage) );
  FUNC0( FUNC8(pPage->pBt->mutex) );
  data = pPage->aData;
  ptr = &pPage->aCellIdx[2*idx];
  pc = FUNC3(ptr);
  hdr = pPage->hdrOffset;
  FUNC9( pc==FUNC3(&data[hdr+5]) );
  FUNC9( pc+sz==pPage->pBt->usableSize );
  if( pc < (u32)FUNC3(&data[hdr+5]) || pc+sz > pPage->pBt->usableSize ){
    *pRC = SQLITE_CORRUPT_BKPT;
    return;
  }
  rc = FUNC2(pPage, pc, sz);
  if( rc ){
    *pRC = rc;
    return;
  }
  pPage->nCell--;
  if( pPage->nCell==0 ){
    FUNC5(&data[hdr+1], 0, 4);
    data[hdr+7] = 0;
    FUNC6(&data[hdr+5], pPage->pBt->usableSize);
    pPage->nFree = pPage->pBt->usableSize - pPage->hdrOffset
                       - pPage->childPtrSize - 8;
  }else{
    FUNC4(ptr, ptr+2, 2*(pPage->nCell - idx));
    FUNC6(&data[hdr+3], pPage->nCell);
    pPage->nFree += 2;
  }
}