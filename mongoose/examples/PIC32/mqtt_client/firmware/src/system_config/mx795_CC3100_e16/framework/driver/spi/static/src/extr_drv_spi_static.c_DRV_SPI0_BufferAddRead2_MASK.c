#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t dataLeftToRx; size_t dummyLeftToTx; int /*<<< orphan*/  status; void* context; int /*<<< orphan*/  completeCB; void* rxBuffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ DRV_SPI_OBJ ;
typedef  TYPE_2__ DRV_SPI_JOB_OBJECT ;
typedef  scalar_t__ DRV_SPI_BUFFER_HANDLE ;
typedef  int /*<<< orphan*/  DRV_SPI_BUFFER_EVENT_HANDLER ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_SPI_BUFFER_EVENT_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 TYPE_1__ gDrvSPI0Obj ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

DRV_SPI_BUFFER_HANDLE FUNC4 ( void *rxBuffer, size_t size, DRV_SPI_BUFFER_EVENT_HANDLER completeCB, void * context, DRV_SPI_BUFFER_HANDLE * jobHandle)
{
    DRV_SPI_OBJ *dObj = (DRV_SPI_OBJ*)NULL;

    dObj = &gDrvSPI0Obj;

    DRV_SPI_JOB_OBJECT * pJob = NULL;

    if (FUNC0(dObj->queue, (void **)&pJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        FUNC2(false, "\r\nSPI Driver: Error trying to get a free entry.");
        return (DRV_SPI_BUFFER_HANDLE)NULL;
    }

    FUNC3(pJob, 0, sizeof(DRV_SPI_JOB_OBJECT));

    pJob->rxBuffer = rxBuffer;
    pJob->dataLeftToRx = size;
    pJob->dummyLeftToTx = size;
    pJob->completeCB = completeCB;
    pJob->context = context;
    pJob->status = DRV_SPI_BUFFER_EVENT_PENDING;

    if (jobHandle != NULL )
    {
        *jobHandle = (DRV_SPI_BUFFER_HANDLE)pJob;
    }

    if (FUNC1(dObj->queue, (void*)pJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        FUNC2(false, "\r\nSPI Driver: Error enqueing new job.");
        return (DRV_SPI_BUFFER_HANDLE)NULL;
    }

    return (DRV_SPI_BUFFER_HANDLE)pJob;
}