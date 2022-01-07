
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t xBlockSize; struct TYPE_5__* pxNextFreeBlock; } ;
typedef TYPE_1__ BlockLink_t ;


 int configASSERT (int) ;
 size_t heapMINIMUM_BLOCK_SIZE ;
 int mtCOVERAGE_TEST_MARKER () ;
 size_t portBYTE_ALIGNMENT ;
 size_t portBYTE_ALIGNMENT_MASK ;
 int prvHeapInit () ;
 int prvInsertBlockIntoFreeList (TYPE_1__*) ;
 TYPE_1__* pxEnd ;
 int traceMALLOC (void*,size_t) ;
 int vTaskSuspendAll () ;
 size_t xBlockAllocatedBit ;
 size_t xFreeBytesRemaining ;
 int xHeapStructSize ;
 size_t xMinimumEverFreeBytesRemaining ;
 TYPE_1__ xStart ;
 int xTaskResumeAll () ;

void *pvPortMalloc( size_t xWantedSize )
{
BlockLink_t *pxBlock, *pxPreviousBlock, *pxNewBlockLink;
void *pvReturn = ((void*)0);

 vTaskSuspendAll();
 {


  if( pxEnd == ((void*)0) )
  {
   prvHeapInit();
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }





  if( ( xWantedSize & xBlockAllocatedBit ) == 0 )
  {


   if( xWantedSize > 0 )
   {
    xWantedSize += xHeapStructSize;



    if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
    {

     xWantedSize += ( portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK ) );
     configASSERT( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) == 0 );
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }

   if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
   {


    pxPreviousBlock = &xStart;
    pxBlock = xStart.pxNextFreeBlock;
    while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != ((void*)0) ) )
    {
     pxPreviousBlock = pxBlock;
     pxBlock = pxBlock->pxNextFreeBlock;
    }



    if( pxBlock != pxEnd )
    {


     pvReturn = ( void * ) ( ( ( uint8_t * ) pxPreviousBlock->pxNextFreeBlock ) + xHeapStructSize );



     pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;



     if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
     {




      pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
      configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );



      pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
      pxBlock->xBlockSize = xWantedSize;


      prvInsertBlockIntoFreeList( pxNewBlockLink );
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }

     xFreeBytesRemaining -= pxBlock->xBlockSize;

     if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
     {
      xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }



     pxBlock->xBlockSize |= xBlockAllocatedBit;
     pxBlock->pxNextFreeBlock = ((void*)0);
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }

  traceMALLOC( pvReturn, xWantedSize );
 }
 ( void ) xTaskResumeAll();
 configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 return pvReturn;
}
