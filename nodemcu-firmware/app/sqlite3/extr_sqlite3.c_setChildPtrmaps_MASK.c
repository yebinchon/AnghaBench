#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {int nCell; int hdrOffset; int /*<<< orphan*/ * aData; int /*<<< orphan*/  leaf; TYPE_2__* pBt; int /*<<< orphan*/  pgno; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_BTREE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(MemPage *pPage){
  int i;                             /* Counter variable */
  int nCell;                         /* Number of cells in page pPage */
  int rc;                            /* Return code */
  BtShared *pBt = pPage->pBt;
  Pgno pgno = pPage->pgno;

  FUNC0( FUNC6(pPage->pBt->mutex) );
  rc = FUNC1(pPage);
  if( rc!=SQLITE_OK ) return rc;
  nCell = pPage->nCell;

  for(i=0; i<nCell; i++){
    u8 *pCell = FUNC2(pPage, i);

    FUNC5(pPage, pCell, &rc);

    if( !pPage->leaf ){
      Pgno childPgno = FUNC3(pCell);
      FUNC4(pBt, childPgno, PTRMAP_BTREE, pgno, &rc);
    }
  }

  if( !pPage->leaf ){
    Pgno childPgno = FUNC3(&pPage->aData[pPage->hdrOffset+8]);
    FUNC4(pBt, childPgno, PTRMAP_BTREE, pgno, &rc);
  }

  return rc;
}