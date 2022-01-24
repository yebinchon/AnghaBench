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
struct DRV_SPI_DRIVER_OBJECT {TYPE_1__* currentJob; } ;
struct TYPE_2__ {int rxDMAProgressStage; } ;
typedef  int /*<<< orphan*/  SYS_DMA_TRANSFER_EVENT ;
typedef  int /*<<< orphan*/  SYS_DMA_CHANNEL_HANDLE ;
typedef  TYPE_1__ DRV_SPI_JOB_OBJECT ;

/* Variables and functions */
#define  DRV_SPI_DMA_DATA_INPROGRESS 129 
#define  DRV_SPI_DMA_DUMMY_INPROGRESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t) ; 

void FUNC2(SYS_DMA_TRANSFER_EVENT event, SYS_DMA_CHANNEL_HANDLE handle, uintptr_t contextHandle)
{
    struct DRV_SPI_DRIVER_OBJECT * pDrvInstance = (struct DRV_SPI_DRIVER_OBJECT * )contextHandle;
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvInstance->currentJob;

    switch(currentJob->rxDMAProgressStage)
    {
        case DRV_SPI_DMA_DATA_INPROGRESS:
            FUNC0(event, handle, contextHandle);
            break;
        case DRV_SPI_DMA_DUMMY_INPROGRESS:
            FUNC1(event, handle, contextHandle);
            break;
        default:
            break;
    }
}