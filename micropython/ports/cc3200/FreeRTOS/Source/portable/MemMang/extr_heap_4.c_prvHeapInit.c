
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * pxNextFreeBlock; scalar_t__ xBlockSize; } ;
struct TYPE_5__ {size_t xBlockSize; void* pxNextFreeBlock; } ;
struct TYPE_4__ {size_t xBlockSize; TYPE_3__* pxNextFreeBlock; } ;
typedef TYPE_1__ BlockLink_t ;


 size_t configTOTAL_HEAP_SIZE ;
 int heapBITS_PER_BYTE ;
 int portBYTE_ALIGNMENT ;
 size_t portBYTE_ALIGNMENT_MASK ;
 TYPE_3__* pxEnd ;
 scalar_t__ ucHeap ;
 size_t xBlockAllocatedBit ;
 size_t xFreeBytesRemaining ;
 scalar_t__ xHeapStructSize ;
 size_t xMinimumEverFreeBytesRemaining ;
 TYPE_2__ xStart ;

__attribute__((used)) static void prvHeapInit( void )
{
BlockLink_t *pxFirstFreeBlock;
uint8_t *pucAlignedHeap;
size_t uxAddress;
size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;


 uxAddress = ( size_t ) ucHeap;

 if( ( uxAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 {
  uxAddress += ( portBYTE_ALIGNMENT - 1 );
  uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
  xTotalHeapSize -= uxAddress - ( size_t ) ucHeap;
 }

 pucAlignedHeap = ( uint8_t * ) uxAddress;



 xStart.pxNextFreeBlock = ( void * ) pucAlignedHeap;
 xStart.xBlockSize = ( size_t ) 0;



 uxAddress = ( ( size_t ) pucAlignedHeap ) + xTotalHeapSize;
 uxAddress -= xHeapStructSize;
 uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
 pxEnd = ( void * ) uxAddress;
 pxEnd->xBlockSize = 0;
 pxEnd->pxNextFreeBlock = ((void*)0);



 pxFirstFreeBlock = ( void * ) pucAlignedHeap;
 pxFirstFreeBlock->xBlockSize = uxAddress - ( size_t ) pxFirstFreeBlock;
 pxFirstFreeBlock->pxNextFreeBlock = pxEnd;


 xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;


 xBlockAllocatedBit = ( ( size_t ) 1 ) << ( ( sizeof( size_t ) * heapBITS_PER_BYTE ) - 1 );
}
