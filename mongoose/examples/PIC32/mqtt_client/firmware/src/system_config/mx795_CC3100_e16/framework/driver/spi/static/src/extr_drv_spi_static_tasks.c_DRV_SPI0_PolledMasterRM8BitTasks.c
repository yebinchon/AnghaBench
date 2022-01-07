
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct DRV_SPI_OBJ {scalar_t__ numTrfsSmPolled; TYPE_1__* currentJob; int queue; int (* operationEnded ) (int ,int ,int ) ;int (* operationStarting ) (int ,int ,int ) ;scalar_t__ symbolsInProgress; } ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ dataLeftToTx; scalar_t__ dummyLeftToTx; size_t dataLeftToRx; size_t dummyLeftToRx; int context; int (* completeCB ) (int ,int ,int ) ;int status; } ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;
typedef int DRV_SPI_BUFFER_HANDLE ;


 int DRV_SPI0_MasterRMReceive8BitPolled (struct DRV_SPI_OBJ*) ;
 int DRV_SPI0_MasterRMSend8BitPolled (struct DRV_SPI_OBJ*) ;
 int DRV_SPI0_PolledErrorTasks (struct DRV_SPI_OBJ*) ;
 int DRV_SPI_BUFFER_EVENT_COMPLETE ;
 int DRV_SPI_BUFFER_EVENT_PROCESSING ;
 scalar_t__ DRV_SPI_SYS_QUEUE_DequeueLock (int ,void*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_FreeElementLock (int ,TYPE_1__*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 int PLIB_SPI_BufferClear (int ) ;
 int SPI_ID_1 ;
 int SYS_ASSERT (int,char*) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;

int32_t DRV_SPI0_PolledMasterRM8BitTasks ( struct DRV_SPI_OBJ * dObj )
{
    volatile bool continueLoop;
    uint8_t counter = 0;
    uint8_t numPolled = dObj->numTrfsSmPolled;
    uint8_t result = 0;
    do {

        DRV_SPI_JOB_OBJECT * currentJob = dObj->currentJob;


        if (dObj->currentJob == ((void*)0))
        {
            if (DRV_SPI_SYS_QUEUE_DequeueLock(dObj->queue, (void *)&(dObj->currentJob)) != DRV_SPI_SYS_QUEUE_SUCCESS)
            {
                SYS_ASSERT(0, "\r\nSPI Driver: Error in dequeing.");
                return 0;
            }
            if (dObj->currentJob == ((void*)0))
            {
                return 0;
            }
            currentJob = dObj->currentJob;

            dObj->symbolsInProgress = 0;


            if (dObj->operationStarting != ((void*)0))
            {
                (*dObj->operationStarting)(DRV_SPI_BUFFER_EVENT_PROCESSING, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
            }


            currentJob->status = DRV_SPI_BUFFER_EVENT_PROCESSING;

            PLIB_SPI_BufferClear(SPI_ID_1);
        }


        continueLoop = 0;


            if
            (currentJob->dataLeftToTx +currentJob->dummyLeftToTx != 0)
        {
            DRV_SPI0_MasterRMSend8BitPolled(dObj);
        }

        DRV_SPI0_PolledErrorTasks(dObj);


        volatile size_t bytesLeft = currentJob->dataLeftToRx + currentJob->dummyLeftToRx;


        if (bytesLeft != 0)
        {
            DRV_SPI0_MasterRMReceive8BitPolled(dObj);
            bytesLeft = currentJob->dataLeftToRx + currentJob->dummyLeftToRx;
        }
        if (bytesLeft == 0)
        {

                    currentJob->status = DRV_SPI_BUFFER_EVENT_COMPLETE;

                    if (currentJob->completeCB != ((void*)0))
                    {
                        (*currentJob->completeCB)(DRV_SPI_BUFFER_EVENT_COMPLETE, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
                    }




                    if (dObj->operationEnded != ((void*)0))
                    {
                        (*dObj->operationEnded)(DRV_SPI_BUFFER_EVENT_COMPLETE, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
                    }


                    if (DRV_SPI_SYS_QUEUE_FreeElementLock(dObj->queue, currentJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
                    {
                        SYS_ASSERT(0, "\r\nSPI Driver: Queue free element error.");
                        return 0;
                    }

                    dObj->currentJob = ((void*)0);
                }


        counter ++;
        if ((counter < numPolled) && (result != 0))
        {
            continueLoop = 1;
        }

    } while(continueLoop);
    return 0;
}
