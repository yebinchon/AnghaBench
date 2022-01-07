
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ eState; scalar_t__ pKey; TYPE_1__** apPage; scalar_t__ nKey; } ;
struct TYPE_9__ {scalar_t__ intKey; } ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeReleaseAllCursorPages (TYPE_2__*) ;
 int cursorHoldsMutex (TYPE_2__*) ;
 int invalidateOverflowCache (TYPE_2__*) ;
 int sqlite3BtreeKey (TYPE_2__*,int ,int,void*) ;
 int sqlite3BtreeKeySize (TYPE_2__*,scalar_t__*) ;
 void* sqlite3Malloc (int) ;
 int sqlite3_free (void*) ;

__attribute__((used)) static int saveCursorPosition(BtCursor *pCur){
  int rc;

  assert( CURSOR_VALID==pCur->eState );
  assert( 0==pCur->pKey );
  assert( cursorHoldsMutex(pCur) );

  rc = sqlite3BtreeKeySize(pCur, &pCur->nKey);
  assert( rc==SQLITE_OK );







  if( 0==pCur->apPage[0]->intKey ){
    void *pKey = sqlite3Malloc( (int)pCur->nKey );
    if( pKey ){
      rc = sqlite3BtreeKey(pCur, 0, (int)pCur->nKey, pKey);
      if( rc==SQLITE_OK ){
        pCur->pKey = pKey;
      }else{
        sqlite3_free(pKey);
      }
    }else{
      rc = SQLITE_NOMEM;
    }
  }
  assert( !pCur->apPage[0]->intKey || !pCur->pKey );

  if( rc==SQLITE_OK ){
    btreeReleaseAllCursorPages(pCur);
    pCur->eState = CURSOR_REQUIRESEEK;
  }

  invalidateOverflowCache(pCur);
  return rc;
}
