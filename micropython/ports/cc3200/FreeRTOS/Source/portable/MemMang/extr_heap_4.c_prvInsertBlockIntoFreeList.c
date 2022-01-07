
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int xBlockSize; struct TYPE_5__* pxNextFreeBlock; } ;
typedef TYPE_1__ BlockLink_t ;


 int mtCOVERAGE_TEST_MARKER () ;
 TYPE_1__* pxEnd ;
 TYPE_1__ xStart ;

__attribute__((used)) static void prvInsertBlockIntoFreeList( BlockLink_t *pxBlockToInsert )
{
BlockLink_t *pxIterator;
uint8_t *puc;



 for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
 {

 }



 puc = ( uint8_t * ) pxIterator;
 if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 {
  pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
  pxBlockToInsert = pxIterator;
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }



 puc = ( uint8_t * ) pxBlockToInsert;
 if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) pxIterator->pxNextFreeBlock )
 {
  if( pxIterator->pxNextFreeBlock != pxEnd )
  {

   pxBlockToInsert->xBlockSize += pxIterator->pxNextFreeBlock->xBlockSize;
   pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock->pxNextFreeBlock;
  }
  else
  {
   pxBlockToInsert->pxNextFreeBlock = pxEnd;
  }
 }
 else
 {
  pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 }





 if( pxIterator != pxBlockToInsert )
 {
  pxIterator->pxNextFreeBlock = pxBlockToInsert;
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
}
