
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {struct TYPE_6__* pNext; } ;
struct TYPE_5__ {scalar_t__ numAlloc; scalar_t__ maxElements; scalar_t__ numReserved; scalar_t__ numAllocHW; int numAllocOps; int outOfMemoryErrors; int * pNext; TYPE_1__* pQueueManager; } ;
struct TYPE_4__ {scalar_t__ numReserveElements; scalar_t__ numFreeElements; scalar_t__ freeElementsLW; scalar_t__ reserveElementsLW; int numAllocOps; int * pFreeElementTail; TYPE_3__* pFreeElementHead; int outOfMemoryErrors; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;
typedef TYPE_3__ DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_AllocElement(DRV_SPI_SYS_QUEUE_HANDLE queue, void ** element)
{
    if (element == ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }
    if ((queue <= 0) && (queue >= DRV_SPI_SYS_QUEUE_MAX_ERROR))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    DRV_SPI_SYS_QUEUE_QUEUE_DATA * pQueue = (DRV_SPI_SYS_QUEUE_QUEUE_DATA *)queue;
    DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA * pQueueManager = pQueue->pQueueManager;

    if (pQueue->pNext != ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    if (pQueueManager->pFreeElementHead== ((void*)0))
    {




        return DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY;
    }

    if (pQueue->numAlloc == pQueue->maxElements)
    {




        return DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY;
    }

    if (pQueue->numAlloc < pQueue->numReserved)
    {
        pQueueManager->numReserveElements--;
    }
    else if (pQueueManager->numFreeElements == pQueueManager->numReserveElements)
    {




        return DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY;
    }

    DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA * pEntry = pQueueManager->pFreeElementHead;
    pQueueManager->pFreeElementHead = pEntry->pNext;
    if (pQueueManager->pFreeElementHead == ((void*)0))
    {
        pQueueManager->pFreeElementTail = ((void*)0);
    }
    pEntry->pNext = ((void*)0);
    pQueueManager->numFreeElements --;
    pQueue->numAlloc++;
    *element = (void *)((uint32_t)pEntry + sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA));
    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
