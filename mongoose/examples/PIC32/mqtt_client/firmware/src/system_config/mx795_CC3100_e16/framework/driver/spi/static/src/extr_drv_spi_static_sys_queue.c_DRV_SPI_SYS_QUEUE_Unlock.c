
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_SPI_SYS_QUEUE_RESULT ;
typedef int DRV_SPI_SYS_QUEUE_HANDLE ;


 int _DRV_SPI_SYS_QUEUE_UnlockQueue (int ,int) ;

DRV_SPI_SYS_QUEUE_RESULT DRV_SPI_SYS_QUEUE_Unlock(DRV_SPI_SYS_QUEUE_HANDLE queue)
{
    return _DRV_SPI_SYS_QUEUE_UnlockQueue(queue, 0);
}
