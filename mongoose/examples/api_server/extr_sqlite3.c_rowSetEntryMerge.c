
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RowSetEntry {scalar_t__ v; struct RowSetEntry* pRight; } ;


 int assert (int) ;

__attribute__((used)) static struct RowSetEntry *rowSetEntryMerge(
  struct RowSetEntry *pA,
  struct RowSetEntry *pB
){
  struct RowSetEntry head;
  struct RowSetEntry *pTail;

  pTail = &head;
  while( pA && pB ){
    assert( pA->pRight==0 || pA->v<=pA->pRight->v );
    assert( pB->pRight==0 || pB->v<=pB->pRight->v );
    if( pA->v<pB->v ){
      pTail->pRight = pA;
      pA = pA->pRight;
      pTail = pTail->pRight;
    }else if( pB->v<pA->v ){
      pTail->pRight = pB;
      pB = pB->pRight;
      pTail = pTail->pRight;
    }else{
      pA = pA->pRight;
    }
  }
  if( pA ){
    assert( pA->pRight==0 || pA->v<=pA->pRight->v );
    pTail->pRight = pA;
  }else{
    assert( pB==0 || pB->pRight==0 || pB->v<=pB->pRight->v );
    pTail->pRight = pB;
  }
  return head.pRight;
}
