
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {struct TYPE_4__* pNext; } ;
struct TYPE_3__ {int numDequeueOps; int numEnqueued; int * pTail; TYPE_2__* pHead; int * pNext; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_Dequeue(DRV_SPI_SYS_QUEUE_HANDLE queue, void ** element)
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

    if (pQueue->pNext != ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }
    if (pQueue->pHead == ((void*)0))
    {
        *element = ((void*)0);
        return DRV_SPI_SYS_QUEUE_SUCCESS;
    }
    DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA * pEntry = pQueue->pHead;
    pQueue->pHead = pEntry->pNext;
    if (pQueue->pHead == ((void*)0))
    {
        pQueue->pTail = ((void*)0);
    }

    pEntry->pNext = ((void*)0);





    *element = (void *)((uint32_t)pEntry + sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA));
    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
