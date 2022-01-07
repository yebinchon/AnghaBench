
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct DRV_SPI_OBJ {scalar_t__ symbolsInProgress; TYPE_1__* currentJob; } ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ dataLeftToRx; size_t dataRxed; int dummyLeftToRx; int * rxBuffer; } ;
typedef TYPE_1__ DRV_SPI_JOB_OBJECT ;


 int PLIB_SPI_BufferRead (int ) ;
 scalar_t__ PLIB_SPI_ReceiverBufferIsFull (int ) ;
 int SPI_ID_1 ;

int32_t DRV_SPI0_MasterRMReceive8BitPolled( struct DRV_SPI_OBJ * pDrvObj )
{
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvObj->currentJob;

    if (currentJob == ((void*)0))
    {
        return 0;
    }
    if (PLIB_SPI_ReceiverBufferIsFull(SPI_ID_1))
    {

        if (currentJob->dataLeftToRx != 0)
        {

            currentJob->rxBuffer[currentJob->dataRxed] = PLIB_SPI_BufferRead(SPI_ID_1);
            currentJob->dataRxed++;
            currentJob->dataLeftToRx --;
        }
        else
        {




            PLIB_SPI_BufferRead(SPI_ID_1);

            currentJob->dummyLeftToRx--;
        }

        pDrvObj->symbolsInProgress = 0;
    }

    return 0;
}
