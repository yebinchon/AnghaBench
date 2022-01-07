
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fptrIntChange ) (scalar_t__,int) ;int * pNext; int * pQueueManager; } ;
typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef int DRV_SPI_SYS_QUEUE_QUEUE_MANAGER_DATA ;
typedef TYPE_1__ DRV_SPI_SYS_QUEUE_QUEUE_DATA ;
typedef int DRV_SPI_SYS_QUEUE_MANAGER_HANDLE ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;


 int DRV_SPI_SYS_QUEUE_INVALID_PARAMETER ;
 scalar_t__ DRV_SPI_SYS_QUEUE_MAX_ERROR ;
 int DRV_SPI_SYS_QUEUE_SUCCESS ;
 int _DRV_SPI_SYS_QUEUE_LockQueueManager (int ) ;
 int stub1 (scalar_t__,int) ;

DRV_SPI_SYS_QUEUE_RESULT _DRV_SPI_SYS_QUEUE_LockQueue(DRV_SPI_SYS_QUEUE_HANDLE queue, bool freeList)
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

    if (freeList)
    {
        return _DRV_SPI_SYS_QUEUE_LockQueueManager((DRV_SPI_SYS_QUEUE_MANAGER_HANDLE)pQueueManager);
    }
    else
    {
        if (pQueue->fptrIntChange != ((void*)0))
        {
            (*pQueue->fptrIntChange)(queue, 1);
        }
    }

    return DRV_SPI_SYS_QUEUE_SUCCESS;
}
