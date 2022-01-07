
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ nSize; unsigned char* pCell; int nLocal; scalar_t__ nKey; int nHeader; } ;
struct TYPE_8__ {size_t iPage; scalar_t__ eState; scalar_t__* aiIdx; TYPE_6__ info; TYPE_1__** apPage; } ;
struct TYPE_7__ {scalar_t__ nCell; scalar_t__ intKey; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ CURSOR_VALID ;
 scalar_t__ NEVER (int) ;
 int assert (int) ;
 int btreeParseCell (TYPE_1__*,scalar_t__,TYPE_6__*) ;
 int cursorHoldsMutex (TYPE_2__*) ;

__attribute__((used)) static const unsigned char *fetchPayload(
  BtCursor *pCur,
  int *pAmt,
  int skipKey
){
  unsigned char *aPayload;
  MemPage *pPage;
  u32 nKey;
  u32 nLocal;

  assert( pCur!=0 && pCur->iPage>=0 && pCur->apPage[pCur->iPage]);
  assert( pCur->eState==CURSOR_VALID );
  assert( cursorHoldsMutex(pCur) );
  pPage = pCur->apPage[pCur->iPage];
  assert( pCur->aiIdx[pCur->iPage]<pPage->nCell );
  if( NEVER(pCur->info.nSize==0) ){
    btreeParseCell(pCur->apPage[pCur->iPage], pCur->aiIdx[pCur->iPage],
                   &pCur->info);
  }
  aPayload = pCur->info.pCell;
  aPayload += pCur->info.nHeader;
  if( pPage->intKey ){
    nKey = 0;
  }else{
    nKey = (int)pCur->info.nKey;
  }
  if( skipKey ){
    aPayload += nKey;
    nLocal = pCur->info.nLocal - nKey;
  }else{
    nLocal = pCur->info.nLocal;
    assert( nLocal<=nKey );
  }
  *pAmt = nLocal;
  return aPayload;
}
