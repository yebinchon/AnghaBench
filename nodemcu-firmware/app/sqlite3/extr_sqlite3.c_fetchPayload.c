
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {scalar_t__ nSize; scalar_t__ pPayload; int nLocal; } ;
struct TYPE_12__ {size_t iPage; scalar_t__ eState; scalar_t__ ix; TYPE_4__ info; TYPE_3__** apPage; TYPE_2__* pBtree; } ;
struct TYPE_10__ {scalar_t__ nCell; scalar_t__ aData; scalar_t__ aDataEnd; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_5__ BtCursor ;


 scalar_t__ CORRUPT_DB ;
 scalar_t__ CURSOR_VALID ;
 int assert (int) ;
 int cursorOwnsBtShared (TYPE_5__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static const void *fetchPayload(
  BtCursor *pCur,
  u32 *pAmt
){
  u32 amt;
  assert( pCur!=0 && pCur->iPage>=0 && pCur->apPage[pCur->iPage]);
  assert( pCur->eState==CURSOR_VALID );
  assert( sqlite3_mutex_held(pCur->pBtree->db->mutex) );
  assert( cursorOwnsBtShared(pCur) );
  assert( pCur->ix<pCur->apPage[pCur->iPage]->nCell );
  assert( pCur->info.nSize>0 );
  assert( pCur->info.pPayload>pCur->apPage[pCur->iPage]->aData || CORRUPT_DB );
  assert( pCur->info.pPayload<pCur->apPage[pCur->iPage]->aDataEnd ||CORRUPT_DB);
  amt = (int)(pCur->apPage[pCur->iPage]->aDataEnd - pCur->info.pPayload);
  if( pCur->info.nLocal<amt ) amt = pCur->info.nLocal;
  *pAmt = amt;
  return (void*)pCur->info.pPayload;
}
