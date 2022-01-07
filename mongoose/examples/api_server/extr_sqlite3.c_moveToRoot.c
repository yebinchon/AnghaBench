
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nSize; } ;
struct TYPE_14__ {scalar_t__ eState; int skipNext; scalar_t__ iPage; int pgnoRoot; scalar_t__ wrFlag; scalar_t__ pKeyInfo; scalar_t__ validNKey; scalar_t__ atLast; TYPE_1__ info; scalar_t__* aiIdx; TYPE_2__** apPage; TYPE_3__* pBtree; } ;
struct TYPE_13__ {int * pBt; } ;
struct TYPE_12__ {int intKey; int pgno; scalar_t__ nCell; int hdrOffset; int * aData; int leaf; scalar_t__ isInit; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ Btree ;
typedef int BtShared ;
typedef TYPE_4__ BtCursor ;


 scalar_t__ CURSOR_FAULT ;
 scalar_t__ CURSOR_INVALID ;
 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_4__*) ;
 int get4byte (int *) ;
 int getAndInitPage (int *,int,TYPE_2__**,int) ;
 int moveToChild (TYPE_4__*,int ) ;
 int releasePage (TYPE_2__*) ;
 int sqlite3BtreeClearCursor (TYPE_4__*) ;

__attribute__((used)) static int moveToRoot(BtCursor *pCur){
  MemPage *pRoot;
  int rc = SQLITE_OK;
  Btree *p = pCur->pBtree;
  BtShared *pBt = p->pBt;

  assert( cursorHoldsMutex(pCur) );
  assert( CURSOR_INVALID < CURSOR_REQUIRESEEK );
  assert( CURSOR_VALID < CURSOR_REQUIRESEEK );
  assert( CURSOR_FAULT > CURSOR_REQUIRESEEK );
  if( pCur->eState>=CURSOR_REQUIRESEEK ){
    if( pCur->eState==CURSOR_FAULT ){
      assert( pCur->skipNext!=SQLITE_OK );
      return pCur->skipNext;
    }
    sqlite3BtreeClearCursor(pCur);
  }

  if( pCur->iPage>=0 ){
    int i;
    for(i=1; i<=pCur->iPage; i++){
      releasePage(pCur->apPage[i]);
    }
    pCur->iPage = 0;
  }else if( pCur->pgnoRoot==0 ){
    pCur->eState = CURSOR_INVALID;
    return SQLITE_OK;
  }else{
    rc = getAndInitPage(pBt, pCur->pgnoRoot, &pCur->apPage[0], pCur->wrFlag==0);
    if( rc!=SQLITE_OK ){
      pCur->eState = CURSOR_INVALID;
      return rc;
    }
    pCur->iPage = 0;





    assert( pCur->apPage[0]->intKey==1 || pCur->apPage[0]->intKey==0 );
    if( (pCur->pKeyInfo==0)!=pCur->apPage[0]->intKey ){
      return SQLITE_CORRUPT_BKPT;
    }
  }







  pRoot = pCur->apPage[0];
  assert( pRoot->pgno==pCur->pgnoRoot );
  assert( pRoot->isInit && (pCur->pKeyInfo==0)==pRoot->intKey );

  pCur->aiIdx[0] = 0;
  pCur->info.nSize = 0;
  pCur->atLast = 0;
  pCur->validNKey = 0;

  if( pRoot->nCell==0 && !pRoot->leaf ){
    Pgno subpage;
    if( pRoot->pgno!=1 ) return SQLITE_CORRUPT_BKPT;
    subpage = get4byte(&pRoot->aData[pRoot->hdrOffset+8]);
    pCur->eState = CURSOR_VALID;
    rc = moveToChild(pCur, subpage);
  }else{
    pCur->eState = ((pRoot->nCell>0)?CURSOR_VALID:CURSOR_INVALID);
  }
  return rc;
}
