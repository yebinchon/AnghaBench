#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nSize; } ;
struct TYPE_9__ {scalar_t__ eState; int curFlags; TYPE_1__ info; scalar_t__ ix; TYPE_2__* pPage; } ;
struct TYPE_8__ {int hdrOffset; scalar_t__ nCell; int /*<<< orphan*/ * aData; int /*<<< orphan*/  leaf; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int BTCF_ValidNKey ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(BtCursor *pCur){
  Pgno pgno;
  int rc = SQLITE_OK;
  MemPage *pPage = 0;

  FUNC0( FUNC1(pCur) );
  FUNC0( pCur->eState==CURSOR_VALID );
  while( !(pPage = pCur->pPage)->leaf ){
    pgno = FUNC2(&pPage->aData[pPage->hdrOffset+8]);
    pCur->ix = pPage->nCell;
    rc = FUNC3(pCur, pgno);
    if( rc ) return rc;
  }
  pCur->ix = pPage->nCell-1;
  FUNC0( pCur->info.nSize==0 );
  FUNC0( (pCur->curFlags & BTCF_ValidNKey)==0 );
  return SQLITE_OK;
}