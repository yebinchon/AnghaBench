
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
struct TYPE_8__ {scalar_t__ type; int numQueues; int elementSize; size_t bufferLen; int * pBuffer; } ;
struct TYPE_7__ {TYPE_1__* pQueueManager; struct TYPE_7__* pNext; } ;
struct TYPE_6__ {size_t numFreeElements; size_t freeElementsLW; TYPE_4__* pFreeElementTail; TYPE_4__* pElementArea; TYPE_4__* pFreeElementHead; TYPE_2__* pFreeQueueTail; TYPE_2__* pFreeQueueHead; TYPE_2__* pQueueArea; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_2__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef TYPE_3__ DRV_SPI_SYS_QUEUE_MANAGER_SETUP ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_MANAGER_HANDLE ;
typedef TYPE_4__ DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA ;


 scalar_t__ DRV_SPI_SYS_QUEUE_Fifo ;
 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 int DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;
 int memset (int *,int ,size_t) ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_Initialize(DRV_SPI_SYS_QUEUE_MANAGER_SETUP * initParams, DRV_SPI_SYS_QUEUE_MANAGER_HANDLE * handle)
{
    if (initParams == ((void*)0) || initParams->pBuffer == ((void*)0) || handle == ((void*)0))
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    if (initParams->type != DRV_SPI_SYS_QUEUE_Fifo)
    {
        return DRV_SPI_SYS_QUEUE_INVALID_PARAMETER;
    }

    size_t sizeNeeded = (sizeof(DRV_SPI_SYS_QUEUE_QUEUE_DATA) *
                        initParams->numQueues) +
                        sizeof(DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA) +
                        (sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA) +
                        initParams->elementSize);

    if (initParams->bufferLen < sizeNeeded)
    {
        return DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY;
    }


    memset(initParams->pBuffer, 0, initParams->bufferLen);


    DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA * pQueueManager = (DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA *)initParams->pBuffer;
    pQueueManager->pQueueArea = (DRV_SPI_SYS_QUEUE_QUEUE_DATA*)((uint32_t)pQueueManager + sizeof(DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA));
    pQueueManager->pElementArea = (DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA*)((uint32_t)pQueueManager->pQueueArea + (sizeof(DRV_SPI_SYS_QUEUE_QUEUE_DATA) * initParams->numQueues) );


    DRV_SPI_SYS_QUEUE_QUEUE_DATA * pQueue = pQueueManager->pQueueArea;
    pQueueManager->pFreeQueueHead = pQueue;
    pQueueManager->pFreeQueueTail = pQueue;
    pQueue->pQueueManager = pQueueManager;
    uint8_t counter;
    for (counter = 1; counter < initParams->numQueues; counter++)
    {
        pQueueManager->pFreeQueueTail->pNext = &(pQueue[counter]);
        pQueueManager->pFreeQueueTail = &(pQueue[counter]);
        pQueue[counter].pQueueManager = pQueueManager;
    }


    size_t spaceRemaining = initParams->bufferLen -
            sizeof(DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA) -
            (sizeof(DRV_SPI_SYS_QUEUE_QUEUE_DATA) * initParams->numQueues);
    size_t numberOfElements = spaceRemaining /
            (sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA) + initParams->elementSize );

    DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA * pElement = pQueueManager->pElementArea;
    pQueueManager->pFreeElementHead = pElement;
    pQueueManager->pFreeElementTail = pElement;

    for (counter = 1; counter < numberOfElements; counter ++)
    {
        pElement = (DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA *)
              ((uint32_t)pQueueManager->pElementArea +
               (sizeof(DRV_SPI_SYS_QUEUE_FIFO_ELEMENT_DATA) +
                initParams->elementSize) *
               counter);
        pQueueManager->pFreeElementTail->pNext = pElement;
        pQueueManager->pFreeElementTail = pElement;
    }
    pQueueManager->numFreeElements = numberOfElements;



    *handle = (DRV_SPI_SYS_QUEUE_MANAGER_HANDLE)pQueueManager;
    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
