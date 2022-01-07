
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; scalar_t__ numReserved; TYPE_1__* pQueueManager; } ;
struct TYPE_3__ {scalar_t__ numReserveElements; int reserveElementsLW; int numQueues; int numQueueDestroyOps; TYPE_2__* pFreeQueueHead; TYPE_2__* pFreeQueueTail; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;


 int DRV_SPI_SYS_QUEUE_Dequeue (scalar_t__,void**) ;
 int DRV_SPI_SYS_QUEUE_FreeElement (scalar_t__,void*) ;
 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_DestroyQueue(DRV_SPI_SYS_QUEUE_HANDLE queue)
{
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


    void * pElement = ((void*)0);
    DRV_SPI_SYS_QUEUE_Dequeue(queue, &pElement);
    while (pElement != ((void*)0))
    {
        DRV_SPI_SYS_QUEUE_FreeElement(queue, pElement);
        DRV_SPI_SYS_QUEUE_Dequeue(queue, &pElement);
    }

    pQueueManager->numReserveElements -= pQueue->numReserved;
    if (pQueueManager->pFreeQueueTail == ((void*)0))
    {
        pQueueManager->pFreeQueueTail = pQueue;
        pQueueManager->pFreeQueueHead = pQueue;
    }
    else
    {
        pQueue->pNext = pQueueManager->pFreeQueueHead;
        pQueueManager->pFreeQueueHead = pQueue;
    }







    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
