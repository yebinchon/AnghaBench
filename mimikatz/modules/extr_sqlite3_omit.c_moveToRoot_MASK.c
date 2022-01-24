#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ nSize; } ;
struct TYPE_15__ {scalar_t__ eState; int iPage; scalar_t__ pgnoRoot; int skipNext; int curIntKey; scalar_t__ pKeyInfo; int curFlags; TYPE_3__* pPage; TYPE_2__ info; scalar_t__ ix; int /*<<< orphan*/  curPagerFlags; TYPE_1__* pBtree; TYPE_3__** apPage; } ;
struct TYPE_14__ {int intKey; int pgno; scalar_t__ isInit; scalar_t__ nCell; int hdrOffset; int /*<<< orphan*/ * aData; int /*<<< orphan*/  leaf; } ;
struct TYPE_12__ {int /*<<< orphan*/  pBt; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_3__ MemPage ;
typedef  TYPE_4__ BtCursor ;

/* Variables and functions */
 int BTCF_AtLast ; 
 int BTCF_ValidNKey ; 
 int BTCF_ValidOvfl ; 
 scalar_t__ CURSOR_FAULT ; 
 scalar_t__ CURSOR_INVALID ; 
 scalar_t__ CURSOR_REQUIRESEEK ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_CORRUPT_BKPT ; 
 int FUNC0 (TYPE_3__*) ; 
 int SQLITE_EMPTY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(BtCursor *pCur){
  MemPage *pRoot;
  int rc = SQLITE_OK;

  FUNC1( FUNC2(pCur) );
  FUNC1( CURSOR_INVALID < CURSOR_REQUIRESEEK );
  FUNC1( CURSOR_VALID   < CURSOR_REQUIRESEEK );
  FUNC1( CURSOR_FAULT   > CURSOR_REQUIRESEEK );
  FUNC1( pCur->eState < CURSOR_REQUIRESEEK || pCur->iPage<0 );
  FUNC1( pCur->pgnoRoot>0 || pCur->iPage<0 );

  if( pCur->iPage>=0 ){
    if( pCur->iPage ){
      FUNC6(pCur->pPage);
      while( --pCur->iPage ){
        FUNC6(pCur->apPage[pCur->iPage]);
      }
      pCur->pPage = pCur->apPage[0];
      goto skip_init;
    }
  }else if( pCur->pgnoRoot==0 ){
    pCur->eState = CURSOR_INVALID;
    return SQLITE_EMPTY;
  }else{
    FUNC1( pCur->iPage==(-1) );
    if( pCur->eState>=CURSOR_REQUIRESEEK ){
      if( pCur->eState==CURSOR_FAULT ){
        FUNC1( pCur->skipNext!=SQLITE_OK );
        return pCur->skipNext;
      }
      FUNC7(pCur);
    }
    rc = FUNC4(pCur->pBtree->pBt, pCur->pgnoRoot, &pCur->pPage,
                        0, pCur->curPagerFlags);
    if( rc!=SQLITE_OK ){
      pCur->eState = CURSOR_INVALID;
      return rc;
    }
    pCur->iPage = 0;
    pCur->curIntKey = pCur->pPage->intKey;
  }
  pRoot = pCur->pPage;
  FUNC1( pRoot->pgno==pCur->pgnoRoot );

  /* If pCur->pKeyInfo is not NULL, then the caller that opened this cursor
  ** expected to open it on an index b-tree. Otherwise, if pKeyInfo is
  ** NULL, the caller expects a table b-tree. If this is not the case,
  ** return an SQLITE_CORRUPT error. 
  **
  ** Earlier versions of SQLite assumed that this test could not fail
  ** if the root page was already loaded when this function was called (i.e.
  ** if pCur->iPage>=0). But this is not so if the database is corrupted 
  ** in such a way that page pRoot is linked into a second b-tree table 
  ** (or the freelist).  */
  FUNC1( pRoot->intKey==1 || pRoot->intKey==0 );
  if( pRoot->isInit==0 || (pCur->pKeyInfo==0)!=pRoot->intKey ){
    return FUNC0(pCur->pPage);
  }

skip_init:  
  pCur->ix = 0;
  pCur->info.nSize = 0;
  pCur->curFlags &= ~(BTCF_AtLast|BTCF_ValidNKey|BTCF_ValidOvfl);

  pRoot = pCur->pPage;
  if( pRoot->nCell>0 ){
    pCur->eState = CURSOR_VALID;
  }else if( !pRoot->leaf ){
    Pgno subpage;
    if( pRoot->pgno!=1 ) return SQLITE_CORRUPT_BKPT;
    subpage = FUNC3(&pRoot->aData[pRoot->hdrOffset+8]);
    pCur->eState = CURSOR_VALID;
    rc = FUNC5(pCur, subpage);
  }else{
    pCur->eState = CURSOR_INVALID;
    rc = SQLITE_EMPTY;
  }
  return rc;
}