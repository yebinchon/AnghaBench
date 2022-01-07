
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pgnoRoot; scalar_t__ eState; scalar_t__ iPage; struct TYPE_8__* pNext; TYPE_1__* pBt; } ;
struct TYPE_7__ {TYPE_2__* pCursor; int mutex; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ BtShared ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeReleaseAllCursorPages (TYPE_2__*) ;
 int saveCursorPosition (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static int saveAllCursors(BtShared *pBt, Pgno iRoot, BtCursor *pExcept){
  BtCursor *p;
  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( pExcept==0 || pExcept->pBt==pBt );
  for(p=pBt->pCursor; p; p=p->pNext){
    if( p!=pExcept && (0==iRoot || p->pgnoRoot==iRoot) ){
      if( p->eState==CURSOR_VALID ){
        int rc = saveCursorPosition(p);
        if( SQLITE_OK!=rc ){
          return rc;
        }
      }else{
        testcase( p->iPage>0 );
        btreeReleaseAllCursorPages(p);
      }
    }
  }
  return SQLITE_OK;
}
