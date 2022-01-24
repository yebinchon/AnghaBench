#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct DRV_SPI_DRIVER_OBJECT {int /*<<< orphan*/  rxInterruptSource; int /*<<< orphan*/  rxDmaChannelHandle; int /*<<< orphan*/  spiId; TYPE_1__* currentJob; } ;
struct TYPE_2__ {scalar_t__ dataLeftToRx; size_t dataRxed; int /*<<< orphan*/  rxDMAProgressStage; int /*<<< orphan*/ * rxBuffer; } ;
typedef  scalar_t__ SYS_DMA_TRANSFER_EVENT ;
typedef  int /*<<< orphan*/  SYS_DMA_CHANNEL_HANDLE ;
typedef  TYPE_1__ DRV_SPI_JOB_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_SPI_DMA_COMPLETE ; 
 int /*<<< orphan*/  DRV_SPI_DMA_DATA_INPROGRESS ; 
 scalar_t__ DRV_SPI_DMA_TXFER_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ PLIB_DMA_MAX_TRF_SIZE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ SYS_DMA_TRANSFER_EVENT_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(SYS_DMA_TRANSFER_EVENT event, SYS_DMA_CHANNEL_HANDLE handle, uintptr_t contextHandle)
{
    if (event != SYS_DMA_TRANSFER_EVENT_COMPLETE)
    {
        // Ignore for now
        return;
    }
    struct DRV_SPI_DRIVER_OBJECT * pDrvInstance = (struct DRV_SPI_DRIVER_OBJECT *)contextHandle;
    DRV_SPI_JOB_OBJECT * currentJob = pDrvInstance->currentJob;
    if (currentJob->dataLeftToRx != 0)
    {
            uint8_t * ptr = &(currentJob->rxBuffer[currentJob->dataRxed]);
            uint32_t len = FUNC0(FUNC0(PLIB_DMA_MAX_TRF_SIZE, currentJob->dataLeftToRx), DRV_SPI_DMA_TXFER_SIZE);
            void * spiPtr = FUNC1(pDrvInstance->spiId);
            FUNC2(pDrvInstance->rxDmaChannelHandle, spiPtr, 1, ptr, len, 1);
            currentJob->rxDMAProgressStage = DRV_SPI_DMA_DATA_INPROGRESS;
            currentJob->dataLeftToRx -= len;
            currentJob->dataRxed += len;
    }
    else
    {
        // Job is done
        currentJob->rxDMAProgressStage = DRV_SPI_DMA_COMPLETE;
        FUNC3(pDrvInstance->rxInterruptSource);
    }
}