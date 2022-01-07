
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct DRV_SPI_DRIVER_OBJECT {int txEnabled; scalar_t__ currentBaudRate; int rxEnabled; int txInterruptSource; int rxInterruptSource; int errInterruptSource; TYPE_1__* currentJob; int queue; int spiClk; scalar_t__ symbolsInProgress; int spiId; } ;
typedef int int32_t ;
struct TYPE_5__ {scalar_t__ baudRate; int (* operationEnded ) (int ,int ,int ) ;int (* operationStarting ) (int ,int ,int ) ;} ;
struct TYPE_4__ {scalar_t__ dataLeftToTx; scalar_t__ dummyLeftToTx; size_t dataLeftToRx; size_t dummyLeftToRx; int context; scalar_t__ pClient; int (* completeCB ) (int ,int ,int ) ;int status; } ;
typedef int SPI_MODULE_ID ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;
typedef TYPE_2__ DRV_SPI_CLIENT_OBJECT ;
typedef int DRV_SPI_BUFFER_HANDLE ;


 int DRV_SPI_BUFFER_EVENT_COMPLETE ;
 int DRV_SPI_BUFFER_EVENT_PROCESSING ;
 int DRV_SPI_ISRErrorTasks (struct DRV_SPI_DRIVER_OBJECT*) ;
 int DRV_SPI_MasterEBMReceive8BitISR (struct DRV_SPI_DRIVER_OBJECT*) ;
 int DRV_SPI_MasterEBMSend8BitISR (struct DRV_SPI_DRIVER_OBJECT*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_Dequeue (int ,void*) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_FreeElement (int ,TYPE_1__*) ;
 int DRV_SPI_SYS_QUEUE_IsEmpty (int ) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 int PLIB_SPI_BaudRateSet (int ,int ,scalar_t__) ;
 int PLIB_SPI_BufferClear (int ) ;
 int PLIB_SPI_FIFOInterruptModeSelect (int ,int ) ;
 scalar_t__ PLIB_SPI_RX_8BIT_FIFO_SIZE (int ) ;
 int SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_1HALF_FULL_OR_MORE ;
 int SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_1HALF_EMPTY_OR_MORE ;
 int SYS_ASSERT (int,char*) ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;
 int SYS_INT_SourceDisable (int ) ;
 int SYS_INT_SourceEnable (int ) ;
 int SYS_INT_SourceStatusClear (int ) ;
 scalar_t__ SYS_INT_SourceStatusGet (int ) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;

int32_t DRV_SPI_ISRMasterEBM8BitTasks ( struct DRV_SPI_DRIVER_OBJECT * pDrvInstance )
{
    volatile bool continueLoop;


    SYS_INT_SourceDisable(pDrvInstance->rxInterruptSource);
    SYS_INT_SourceDisable(pDrvInstance->txInterruptSource);
    SYS_INT_SourceDisable(pDrvInstance->errInterruptSource);
    do {

        DRV_SPI_JOB_OBJECT * currentJob = pDrvInstance->currentJob;
        SPI_MODULE_ID spiId = pDrvInstance->spiId;

        if (pDrvInstance->currentJob == ((void*)0))
        {
            if (DRV_SPI_SYS_QUEUE_Dequeue(pDrvInstance->queue, (void *)&(pDrvInstance->currentJob)) != DRV_SPI_SYS_QUEUE_SUCCESS)
            {
                SYS_ASSERT(0, "\r\nSPI Driver: Error in dequeing.");
                return 0;
            }
            if (pDrvInstance->currentJob == ((void*)0))
            {
                pDrvInstance->txEnabled = 0;
                return 0;
            }
            currentJob = pDrvInstance->currentJob;

            pDrvInstance->symbolsInProgress = 0;


            DRV_SPI_CLIENT_OBJECT * pClient = (DRV_SPI_CLIENT_OBJECT*)currentJob->pClient;
            if (pClient->operationStarting != ((void*)0))
            {
                (*pClient->operationStarting)(DRV_SPI_BUFFER_EVENT_PROCESSING, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
            }

            if (pClient->baudRate != pDrvInstance->currentBaudRate)
            {
                PLIB_SPI_BaudRateSet( spiId , SYS_CLK_PeripheralFrequencyGet(pDrvInstance->spiClk), pClient->baudRate );
                pDrvInstance->currentBaudRate = pClient->baudRate;
            }


            currentJob->status = DRV_SPI_BUFFER_EVENT_PROCESSING;
            if (currentJob->dataLeftToTx +currentJob->dummyLeftToTx > PLIB_SPI_RX_8BIT_FIFO_SIZE(spiId))
            {
                PLIB_SPI_FIFOInterruptModeSelect(spiId, SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_1HALF_EMPTY_OR_MORE);
                PLIB_SPI_FIFOInterruptModeSelect(spiId, SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_1HALF_FULL_OR_MORE);
            }

            PLIB_SPI_BufferClear(spiId);
        }


        continueLoop = 0;

             if
            (currentJob->dataLeftToTx +currentJob->dummyLeftToTx != 0)
        {
            DRV_SPI_MasterEBMSend8BitISR(pDrvInstance);
        }

        DRV_SPI_ISRErrorTasks(pDrvInstance);


        volatile size_t bytesLeft = currentJob->dataLeftToRx + currentJob->dummyLeftToRx;


        if (bytesLeft != 0)
        {
            DRV_SPI_MasterEBMReceive8BitISR(pDrvInstance);
            bytesLeft = currentJob->dataLeftToRx + currentJob->dummyLeftToRx;
        }

        if (bytesLeft == 0)
        {

                    pDrvInstance->rxEnabled = 0;

                    currentJob->status = DRV_SPI_BUFFER_EVENT_COMPLETE;

                    if (currentJob->completeCB != ((void*)0))
                    {
                        (*currentJob->completeCB)(DRV_SPI_BUFFER_EVENT_COMPLETE, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
                    }




                    DRV_SPI_CLIENT_OBJECT * pClient = (DRV_SPI_CLIENT_OBJECT*)currentJob->pClient;
                    if (pClient->operationEnded != ((void*)0))
                    {
                        (*pClient->operationEnded)(DRV_SPI_BUFFER_EVENT_COMPLETE, (DRV_SPI_BUFFER_HANDLE)currentJob, currentJob->context);
                    }

                    if (DRV_SPI_SYS_QUEUE_FreeElement(pDrvInstance->queue, currentJob) != DRV_SPI_SYS_QUEUE_SUCCESS)
                    {
                        SYS_ASSERT(0, "\r\nSPI Driver: Queue free element error.");
                        return 0;
                    }

                    pDrvInstance->currentJob = ((void*)0);
                    if (!DRV_SPI_SYS_QUEUE_IsEmpty(pDrvInstance->queue))
                    {
                        continueLoop = 1;
                        continue;
                    }
                    else
                    {
                        break;
                    }
                }




        if (pDrvInstance->currentJob != ((void*)0))
        {

            SYS_INT_SourceStatusClear(pDrvInstance->rxInterruptSource);
            SYS_INT_SourceStatusClear(pDrvInstance->txInterruptSource);
            SYS_INT_SourceStatusClear(pDrvInstance->errInterruptSource);

            if ((SYS_INT_SourceStatusGet(pDrvInstance->rxInterruptSource)) ||
                (SYS_INT_SourceStatusGet(pDrvInstance->txInterruptSource)) ||
                (SYS_INT_SourceStatusGet(pDrvInstance->errInterruptSource)))
            {

                continueLoop = 1;
                continue;
            }

            SYS_INT_SourceEnable(pDrvInstance->rxInterruptSource);
            SYS_INT_SourceEnable(pDrvInstance->txInterruptSource);

            return 0;
        }

    } while(continueLoop);

    SYS_INT_SourceStatusClear(pDrvInstance->rxInterruptSource);
    SYS_INT_SourceStatusClear(pDrvInstance->txInterruptSource);
    return 0;
}
