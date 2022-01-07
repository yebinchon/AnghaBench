
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct DRV_SPI_DRIVER_OBJECT {TYPE_1__* currentJob; } ;
struct TYPE_2__ {int rxDMAProgressStage; } ;
typedef int SYS_DMA_TRANSFER_EVENT ;
typedef int SYS_DMA_CHANNEL_HANDLE ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;




 int DRV_SPI_MasterDMAReceiveData8BitISR (int ,int ,uintptr_t) ;
 int DRV_SPI_MasterDMAReceiveDummy8BitISR (int ,int ,uintptr_t) ;

void DRV_SPI_ISRDMAMasterReceiveEventHandler8bit(SYS_DMA_TRANSFER_EVENT event, SYS_DMA_CHANNEL_HANDLE handle, uintptr_t contextHandle)
{
    struct DRV_SPI_DRIVER_OBJECT * pDrvInstance = (struct DRV_SPI_DRIVER_OBJECT * )contextHandle;
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvInstance->currentJob;

    switch(currentJob->rxDMAProgressStage)
    {
        case 129:
            DRV_SPI_MasterDMAReceiveData8BitISR(event, handle, contextHandle);
            break;
        case 128:
            DRV_SPI_MasterDMAReceiveDummy8BitISR(event, handle, contextHandle);
            break;
        default:
            break;
    }
}
