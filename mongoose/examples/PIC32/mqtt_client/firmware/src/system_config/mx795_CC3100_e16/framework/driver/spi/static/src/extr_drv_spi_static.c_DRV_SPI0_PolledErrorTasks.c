
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct DRV_SPI_OBJ {TYPE_1__* currentJob; int queue; int (* operationEnded ) (int ,int ,int ) ;} ;
typedef int int32_t ;
struct TYPE_3__ {int context; int (* completeCB ) (int ,int ,int ) ;int status; } ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;
typedef int DRV_SPI_BUFFER_HANDLE ;


 int DRV_SPI_BUFFER_EVENT_ERROR ;
 scalar_t__ DRV_SPI_SYS_QUEUE_FreeElementLock (int ,TYPE_1__*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 int PLIB_SPI_BufferClear (int ) ;
 scalar_t__ PLIB_SPI_ReceiverHasOverflowed (int ) ;
 int PLIB_SPI_ReceiverOverflowClear (int ) ;
 int SPI_ID_1 ;
 int SYS_ASSERT (int,char*) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;

int32_t DRV_SPI0_PolledErrorTasks(struct DRV_SPI_OBJ * dObj)
{

    if (dObj->currentJob == ((void*)0))
    {
        return 0;
    }

    register DRV_SPI_JOB_OBJECT * currentJob = dObj->currentJob;

    if (PLIB_SPI_ReceiverHasOverflowed(SPI_ID_1))
    {
        currentJob->status = DRV_SPI_BUFFER_EVENT_ERROR;
        if (currentJob->completeCB != ((void*)0))
        {
            (*currentJob->completeCB)(DRV_SPI_BUFFER_EVENT_ERROR, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
        }
        if (dObj->operationEnded != ((void*)0))
        {
            (*dObj->operationEnded)(DRV_SPI_BUFFER_EVENT_ERROR, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
        }
        if (DRV_SPI_SYS_QUEUE_FreeElementLock(dObj->queue, currentJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
        {
            SYS_ASSERT(0, "\r\nSPI Driver: Queue free element error.");
            return 0;
        }
        dObj->currentJob = ((void*)0);
        PLIB_SPI_BufferClear(SPI_ID_1 );
        PLIB_SPI_ReceiverOverflowClear (SPI_ID_1 );
    }
    return 0;
}
