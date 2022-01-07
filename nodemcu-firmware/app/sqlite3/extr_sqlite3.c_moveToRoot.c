
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nSize; } ;
struct TYPE_14__ {scalar_t__ eState; int skipNext; int iPage; scalar_t__ pgnoRoot; int curIntKey; scalar_t__ pKeyInfo; int curFlags; TYPE_3__** apPage; TYPE_2__ info; scalar_t__ ix; int curPagerFlags; TYPE_1__* pBtree; } ;
struct TYPE_13__ {int intKey; int pgno; scalar_t__ isInit; scalar_t__ nCell; int hdrOffset; int * aData; int leaf; } ;
struct TYPE_11__ {int pBt; } ;
typedef int Pgno ;
typedef TYPE_3__ MemPage ;
typedef TYPE_4__ BtCursor ;


 int BTCF_AtLast ;
 int BTCF_ValidNKey ;
 int BTCF_ValidOvfl ;
 scalar_t__ CURSOR_FAULT ;
 scalar_t__ CURSOR_INVALID ;
 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_4__*) ;
 int get4byte (int *) ;
 int getAndInitPage (int ,scalar_t__,TYPE_3__**,int ,int ) ;
 int moveToChild (TYPE_4__*,int ) ;
 int releasePageNotNull (TYPE_3__*) ;
 int sqlite3BtreeClearCursor (TYPE_4__*) ;

__attribute__((used)) static int moveToRoot(BtCursor *pCur){
  MemPage *pRoot;
  int rc = SQLITE_OK;

  assert( cursorOwnsBtShared(pCur) );
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
    if( pCur->iPage ){
      do{
        assert( pCur->apPage[pCur->iPage]!=0 );
        releasePageNotNull(pCur->apPage[pCur->iPage--]);
      }while( pCur->iPage);
      goto skip_init;
    }
  }else if( pCur->pgnoRoot==0 ){
    pCur->eState = CURSOR_INVALID;
    return SQLITE_OK;
  }else{
    assert( pCur->iPage==(-1) );
    rc = getAndInitPage(pCur->pBtree->pBt, pCur->pgnoRoot, &pCur->apPage[0],
                        0, pCur->curPagerFlags);
    if( rc!=SQLITE_OK ){
      pCur->eState = CURSOR_INVALID;
       return rc;
    }
    pCur->iPage = 0;
    pCur->curIntKey = pCur->apPage[0]->intKey;
  }
  pRoot = pCur->apPage[0];
  assert( pRoot->pgno==pCur->pgnoRoot );
  assert( pRoot->intKey==1 || pRoot->intKey==0 );
  if( pRoot->isInit==0 || (pCur->pKeyInfo==0)!=pRoot->intKey ){
    return SQLITE_CORRUPT_BKPT;
  }

skip_init:
  pCur->ix = 0;
  pCur->info.nSize = 0;
  pCur->curFlags &= ~(BTCF_AtLast|BTCF_ValidNKey|BTCF_ValidOvfl);

  pRoot = pCur->apPage[0];
  if( pRoot->nCell>0 ){
    pCur->eState = CURSOR_VALID;
  }else if( !pRoot->leaf ){
    Pgno subpage;
    if( pRoot->pgno!=1 ) return SQLITE_CORRUPT_BKPT;
    subpage = get4byte(&pRoot->aData[pRoot->hdrOffset+8]);
    pCur->eState = CURSOR_VALID;
    rc = moveToChild(pCur, subpage);
  }else{
    pCur->eState = CURSOR_INVALID;
  }
  return rc;
}
