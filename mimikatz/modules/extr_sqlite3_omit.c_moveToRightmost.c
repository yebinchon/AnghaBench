
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nSize; } ;
struct TYPE_9__ {scalar_t__ eState; int curFlags; TYPE_1__ info; scalar_t__ ix; TYPE_2__* pPage; } ;
struct TYPE_8__ {int hdrOffset; scalar_t__ nCell; int * aData; int leaf; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ BtCursor ;


 int BTCF_ValidNKey ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_3__*) ;
 int get4byte (int *) ;
 int moveToChild (TYPE_3__*,int ) ;

__attribute__((used)) static int moveToRightmost(BtCursor *pCur){
  Pgno pgno;
  int rc = SQLITE_OK;
  MemPage *pPage = 0;

  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  while( !(pPage = pCur->pPage)->leaf ){
    pgno = get4byte(&pPage->aData[pPage->hdrOffset+8]);
    pCur->ix = pPage->nCell;
    rc = moveToChild(pCur, pgno);
    if( rc ) return rc;
  }
  pCur->ix = pPage->nCell-1;
  assert( pCur->info.nSize==0 );
  assert( (pCur->curFlags & BTCF_ValidNKey)==0 );
  return SQLITE_OK;
}
