
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {struct TYPE_4__* pNext; } ;
struct TYPE_3__ {scalar_t__ numEnqueued; scalar_t__ numEnqueuedHW; int numEnqueueOps; TYPE_2__* pTail; TYPE_2__* pHead; int * pNext; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_Enqueue(DRV_SPI_SYS_QUEUE_HANDLE queue, void * element)
{
    if ((queue <= 0) && (queue >= DRV_SPI_SYS_QUEUE_MAX_ERROR))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    DRV_SPI_SYS_QUEUE_QUEUE_DATA * pQueue = (DRV_SPI_SYS_QUEUE_QUEUE_DATA *)queue;

    if (pQueue->pNext != ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA * pEntry = (DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA *)((uint32_t)element - sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA));

    if (pQueue->pHead == ((void*)0))
    {
        pQueue->pHead = pEntry;
        pQueue->pTail = pEntry;
    }
    else
    {
        pQueue->pTail->pNext = pEntry;
        pQueue->pTail = pEntry;
    }
    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
