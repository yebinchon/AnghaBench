
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct DRV_SPI_OBJ {int symbolsInProgress; TYPE_1__* currentJob; } ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ dataLeftToTx; scalar_t__ dummyLeftToTx; int* txBuffer; size_t dataTxed; } ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;


 int PLIB_SPI_BufferWrite (int ,int) ;
 int PLIB_SPI_TransmitBufferIsEmpty (int ) ;
 int SPI_ID_1 ;

int32_t DRV_SPI0_MasterRMSend8BitPolled( struct DRV_SPI_OBJ * pDrvObj )
{
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvObj->currentJob;


    if (currentJob->dataLeftToTx + currentJob->dummyLeftToTx == 0)
    {
        return 0;
    }

    if (!PLIB_SPI_TransmitBufferIsEmpty(SPI_ID_1))
    {
        return 0;
    }

    if (pDrvObj->symbolsInProgress != 0)
    {
        return 0;
    }
    if (currentJob->dataLeftToTx != 0)
    {

        PLIB_SPI_BufferWrite(SPI_ID_1, currentJob->txBuffer[currentJob->dataTxed]);
        currentJob->dataTxed++;
        currentJob->dataLeftToTx--;
    }
    else
    {

        PLIB_SPI_BufferWrite(SPI_ID_1, 0xff);
        currentJob->dummyLeftToTx--;
    }

    pDrvObj->symbolsInProgress = 1;

    return 0;
}
