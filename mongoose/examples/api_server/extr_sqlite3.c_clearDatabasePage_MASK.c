#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_12__ {int nCell; unsigned char* aData; int /*<<< orphan*/  pDbPage; int /*<<< orphan*/  intKey; int /*<<< orphan*/  leaf; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int PTF_LEAF ; 
 int SQLITE_CORRUPT_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,unsigned char*) ; 
 unsigned char* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC5 (unsigned char*) ; 
 int FUNC6 (TYPE_2__*,scalar_t__,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC11(
  BtShared *pBt,           /* The BTree that contains the table */
  Pgno pgno,               /* Page number to clear */
  int freePageFlag,        /* Deallocate page if true */
  int *pnChange            /* Add number of Cells freed to this counter */
){
  MemPage *pPage;
  int rc;
  unsigned char *pCell;
  int i;

  FUNC0( FUNC9(pBt->mutex) );
  if( pgno>FUNC1(pBt) ){
    return SQLITE_CORRUPT_BKPT;
  }

  rc = FUNC6(pBt, pgno, &pPage, 0);
  if( rc ) return rc;
  for(i=0; i<pPage->nCell; i++){
    pCell = FUNC3(pPage, i);
    if( !pPage->leaf ){
      rc = FUNC11(pBt, FUNC5(pCell), 1, pnChange);
      if( rc ) goto cleardatabasepage_out;
    }
    rc = FUNC2(pPage, pCell);
    if( rc ) goto cleardatabasepage_out;
  }
  if( !pPage->leaf ){
    rc = FUNC11(pBt, FUNC5(&pPage->aData[8]), 1, pnChange);
    if( rc ) goto cleardatabasepage_out;
  }else if( pnChange ){
    FUNC0( pPage->intKey );
    *pnChange += pPage->nCell;
  }
  if( freePageFlag ){
    FUNC4(pPage, &rc);
  }else if( (rc = FUNC8(pPage->pDbPage))==0 ){
    FUNC10(pPage, pPage->aData[0] | PTF_LEAF);
  }

cleardatabasepage_out:
  FUNC7(pPage);
  return rc;
}