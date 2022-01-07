
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t dataLeftToRx; size_t dummyLeftToTx; int status; void* context; int completeCB; void* rxBuffer; } ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ DRV_SPI_OBJ ;
typedef TYPE_2__ DRV_SPI_JOB_OBJECT ;
typedef scalar_t__ DRV_SPI_BUFFER_HANDLE ;
typedef int DRV_SPI_BUFFER_EVENT_HANDLER ;


 int DRV_SPI_BUFFER_EVENT_PENDING ;
 scalar_t__ DRV_SPI_SYS_QUEUE_AllocElementLock (int ,void**) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_EnqueueLock (int ,void*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 int SYS_ASSERT (int,char*) ;
 TYPE_1__ gDrvSPI0Obj ;
 int memset (TYPE_2__*,int ,int) ;

DRV_SPI_BUFFER_HANDLE DRV_SPI0_BufferAddRead2 ( void *rxBuffer, size_t size, DRV_SPI_BUFFER_EVENT_HANDLER completeCB, void * context, DRV_SPI_BUFFER_HANDLE * jobHandle)
{
    DRV_SPI_OBJ *dObj = (DRV_SPI_OBJ*)((void*)0);

    dObj = &gDrvSPI0Obj;

    DRV_SPI_JOB_OBJECT * pJob = ((void*)0);

    if (DRV_SPI_SYS_QUEUE_AllocElementLock(dObj->queue, (void **)&pJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        SYS_ASSERT(0, "\r\nSPI Driver: Error trying to get a free entry.");
        return (DRV_SPI_BUFFER_HANDLE)((void*)0);
    }

    memset(pJob, 0, sizeof(DRV_SPI_JOB_OBJECT));

    pJob->rxBuffer = rxBuffer;
    pJob->dataLeftToRx = size;
    pJob->dummyLeftToTx = size;
    pJob->completeCB = completeCB;
    pJob->context = context;
    pJob->status = DRV_SPI_BUFFER_EVENT_PENDING;

    if (jobHandle != ((void*)0) )
    {
        *jobHandle = (DRV_SPI_BUFFER_HANDLE)pJob;
    }

    if (DRV_SPI_SYS_QUEUE_EnqueueLock(dObj->queue, (void*)pJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        SYS_ASSERT(0, "\r\nSPI Driver: Error enqueing new job.");
        return (DRV_SPI_BUFFER_HANDLE)((void*)0);
    }

    return (DRV_SPI_BUFFER_HANDLE)pJob;
}
