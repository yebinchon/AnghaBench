
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
  assert( pA!=0 && pB!=0 );
  for(;;){
    assert( pA->pRight==0 || pA->v<=pA->pRight->v );
    assert( pB->pRight==0 || pB->v<=pB->pRight->v );
    if( pA->v<=pB->v ){
      if( pA->v<pB->v ) pTail = pTail->pRight = pA;
      pA = pA->pRight;
      if( pA==0 ){
        pTail->pRight = pB;
        break;
      }
    }else{
      pTail = pTail->pRight = pB;
      pB = pB->pRight;
      if( pB==0 ){
        pTail->pRight = pA;
        break;
      }
    }
  }
  return head.pRight;
}
