
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DRV_SPI_SYS_QUEUE_RESULT ;
typedef int DRV_SPI_SYS_QUEUE_HANDLE ;


 scalar_t__ DRV_SPI_SYS_QUEUE_DestroyQueue (int ) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 scalar_t__ _DRV_SPI_SYS_QUEUE_LockQueue (int ,int) ;
 scalar_t__ _DRV_SPI_SYS_QUEUE_UnlockQueue (int ,int) ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_DestroyQueueLock(DRV_SPI_SYS_QUEUE_HANDLE queue)
{
    DRV_SPI_SYS_QUEUE_RESULT ret;
    DRV_SPI_SYS_QUEUE_RESULT ret2;
    ret = _DRV_SPI_SYS_QUEUE_LockQueue(queue, 1);
    if (ret != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        return ret;
    }

    ret2 = DRV_SPI_SYS_QUEUE_DestroyQueue(queue);

    ret = _DRV_SPI_SYS_QUEUE_UnlockQueue(queue, 1);
    if (ret != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        return ret;
    }
    return ret2;
}
