
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ eState; size_t iPage; scalar_t__* aiIdx; TYPE_1__** apPage; } ;
struct TYPE_7__ {scalar_t__ nCell; int leaf; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_2__*) ;
 int findCell (TYPE_1__*,scalar_t__) ;
 int get4byte (int ) ;
 int moveToChild (TYPE_2__*,int ) ;

__attribute__((used)) static int moveToLeftmost(BtCursor *pCur){
  Pgno pgno;
  int rc = SQLITE_OK;
  MemPage *pPage;

  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  while( rc==SQLITE_OK && !(pPage = pCur->apPage[pCur->iPage])->leaf ){
    assert( pCur->aiIdx[pCur->iPage]<pPage->nCell );
    pgno = get4byte(findCell(pPage, pCur->aiIdx[pCur->iPage]));
    rc = moveToChild(pCur, pgno);
  }
  return rc;
}
