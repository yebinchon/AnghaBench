
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct DRV_SPI_DRIVER_OBJECT {size_t symbolsInProgress; int txEnabled; int rxEnabled; TYPE_1__* currentJob; int spiId; } ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ dataLeftToTx; size_t* txBuffer; size_t dataTxed; scalar_t__ dummyLeftToTx; } ;
typedef int SPI_MODULE_ID ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;


 size_t MAX (size_t,int ) ;
 size_t MIN (scalar_t__,size_t) ;
 int PLIB_SPI_BufferWrite (int ,int) ;
 int PLIB_SPI_FIFOCountGet (int ,int ) ;
 int PLIB_SPI_FIFOInterruptModeSelect (int ,int ) ;
 size_t PLIB_SPI_TX_8BIT_FIFO_SIZE (int ) ;
 int SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY ;
 int SPI_FIFO_TYPE_TRANSMIT ;

int32_t DRV_SPI_MasterEBMSend8BitISR( struct DRV_SPI_DRIVER_OBJECT * pDrvInstance )
{
    register SPI_MODULE_ID spiId = pDrvInstance->spiId;
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvInstance->currentJob;


        uint8_t symbolsInTransit = MAX(pDrvInstance->symbolsInProgress, PLIB_SPI_FIFOCountGet(spiId, SPI_FIFO_TYPE_TRANSMIT));
        uint8_t bufferBytes = PLIB_SPI_TX_8BIT_FIFO_SIZE(spiId) - symbolsInTransit;

    size_t dataUnits = MIN(currentJob->dataLeftToTx, bufferBytes);

    size_t counter;

    if (dataUnits != 0)
    {

        bufferBytes -= dataUnits;
        currentJob->dataLeftToTx -= dataUnits;

        uint8_t *bufferLoc = &(currentJob->txBuffer[currentJob->dataTxed]);
        for (counter = 0; counter < dataUnits; counter++)
        {

            PLIB_SPI_BufferWrite(spiId, bufferLoc[counter]);
        }

        currentJob->dataTxed += dataUnits;

        pDrvInstance->symbolsInProgress += dataUnits;
    }
    size_t dummyUnits = MIN(currentJob->dummyLeftToTx, bufferBytes);
    if (dummyUnits != 0)
    {
        currentJob->dummyLeftToTx -= dummyUnits;

        pDrvInstance->symbolsInProgress += dummyUnits;
        for (counter = 0; counter < dummyUnits; counter++)
        {
            PLIB_SPI_BufferWrite(spiId, 0xff);
        }
    }
    if (currentJob->dataLeftToTx + currentJob->dummyLeftToTx == 0)
    {

        PLIB_SPI_FIFOInterruptModeSelect(spiId, SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY);
        pDrvInstance->txEnabled = 0;


        pDrvInstance->rxEnabled = 1;
    }
    return 0;
}
