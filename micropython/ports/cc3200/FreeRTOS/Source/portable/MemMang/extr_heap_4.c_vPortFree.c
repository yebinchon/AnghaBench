
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int xBlockSize; int * pxNextFreeBlock; } ;
typedef TYPE_1__ BlockLink_t ;


 int configASSERT (int) ;
 int mtCOVERAGE_TEST_MARKER () ;
 int prvInsertBlockIntoFreeList (TYPE_1__*) ;
 int traceFREE (void*,int) ;
 int vTaskSuspendAll () ;
 int xBlockAllocatedBit ;
 int xFreeBytesRemaining ;
 int xHeapStructSize ;
 int xTaskResumeAll () ;

void vPortFree( void *pv )
{
uint8_t *puc = ( uint8_t * ) pv;
BlockLink_t *pxLink;

 if( pv != ((void*)0) )
 {


  puc -= xHeapStructSize;


  pxLink = ( void * ) puc;


  configASSERT( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 );
  configASSERT( pxLink->pxNextFreeBlock == ((void*)0) );

  if( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 )
  {
   if( pxLink->pxNextFreeBlock == ((void*)0) )
   {


    pxLink->xBlockSize &= ~xBlockAllocatedBit;

    vTaskSuspendAll();
    {

     xFreeBytesRemaining += pxLink->xBlockSize;
     traceFREE( pv, pxLink->xBlockSize );
     prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
    }
    ( void ) xTaskResumeAll();
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
}
