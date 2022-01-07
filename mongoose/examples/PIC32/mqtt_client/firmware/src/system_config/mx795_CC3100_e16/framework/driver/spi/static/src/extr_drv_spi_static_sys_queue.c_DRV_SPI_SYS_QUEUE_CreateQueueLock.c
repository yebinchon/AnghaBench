
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_SPI_SYS_QUEUE_SETUP ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_RESULT ;
typedef int DRV_SPI_SYS_QUEUE_MANAGER_HANDLE ;
typedef scalar_t__ DRV_SPI_SYS_QUEUE_HANDLE ;


 scalar_t__ DRV_SPI_SYS_QUEUE_CreateQueue (int ,int *,scalar_t__*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 scalar_t__ _DRV_SPI_SYS_QUEUE_LockQueueManager (int ) ;
 scalar_t__ _DRV_SPI_SYS_QUEUE_UnlockQueueManager (int ) ;

DRV_SPI_SYS_QUEUE_HANDLE DRV_SPI_SYS_QUEUE_CreateQueueLock(DRV_SPI_SYS_QUEUE_MANAGER_HANDLE queueManager, DRV_SPI_SYS_QUEUE_SETUP * initParams, DRV_SPI_SYS_QUEUE_HANDLE * queue)
{
    DRV_SPI_SYS_QUEUE_RESULT ret;
    DRV_SPI_SYS_QUEUE_HANDLE ret2;
    ret = _DRV_SPI_SYS_QUEUE_LockQueueManager(queueManager);
    if (ret != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        return ret;
    }

    ret2 = DRV_SPI_SYS_QUEUE_CreateQueue(queueManager, initParams, queue);

    ret = _DRV_SPI_SYS_QUEUE_UnlockQueueManager(queueManager);
    if (ret != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        return ret;
    }
    return ret2;
}
