
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ numReserved; int maxElements; int fptrIntChange; TYPE_2__* pQueueManager; struct TYPE_8__* pNext; } ;
struct TYPE_7__ {scalar_t__ numReserveElements; scalar_t__ numFreeElements; scalar_t__ numQueues; scalar_t__ numQueuesHW; int reserveElementsLW; int numQueueCreateOps; int * pFreeQueueTail; TYPE_3__* pFreeQueueHead; } ;
struct TYPE_6__ {scalar_t__ reserveElements; int maxElements; int fptrIntChange; } ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_SETUP ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_3__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_MANAGER_HANDLE ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY ;
 int DRV_SPI_SYS_QUEUE_OUT_OF_QUEUES ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;
 int memset (TYPE_3__*,int ,int) ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_CreateQueue(DRV_SPI_SYS_QUEUE_MANAGER_HANDLE queueManager, DRV_SPI_SYS_QUEUE_SETUP * initParams, DRV_SPI_SYS_QUEUE_HANDLE * handle)
{
    if ((queueManager <= 0) && (queueManager >= DRV_SPI_SYS_QUEUE_MAX_ERROR))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }
    DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA * pQueueManager = (DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA *)queueManager;
    if (initParams == ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }
    if (pQueueManager->pFreeQueueHead == ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_OUT_OF_QUEUES;
    }

    if ((pQueueManager->numReserveElements + initParams->reserveElements) > pQueueManager->numFreeElements)
    {
        return DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY;
    }

    DRV_SPI_SYS_QUEUE_QUEUE_DATA * pQueue = pQueueManager->pFreeQueueHead;
    pQueueManager->pFreeQueueHead = pQueue->pNext;
    if (pQueueManager->pFreeQueueHead == ((void*)0))
    {
        pQueueManager->pFreeQueueTail = ((void*)0);
    }
    memset(pQueue, 0, sizeof(DRV_SPI_SYS_QUEUE_QUEUE_DATA));
    pQueue->pQueueManager = pQueueManager;

    pQueue->fptrIntChange = initParams->fptrIntChange;
    pQueue->numReserved = initParams->reserveElements;
    pQueue->maxElements = initParams->maxElements;

    pQueueManager->numReserveElements += initParams->reserveElements;
   *handle = (DRV_SPI_SYS_QUEUE_HANDLE)pQueue;
   return DRV_SPI_SYS_QUEUE_SUCCESS;
}
