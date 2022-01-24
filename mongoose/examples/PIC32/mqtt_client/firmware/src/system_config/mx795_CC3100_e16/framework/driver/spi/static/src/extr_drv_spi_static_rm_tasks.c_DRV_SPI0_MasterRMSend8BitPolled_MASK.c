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
struct DRV_SPI_OBJ {int symbolsInProgress; TYPE_1__* currentJob; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {scalar_t__ dataLeftToTx; scalar_t__ dummyLeftToTx; int* txBuffer; size_t dataTxed; } ;
typedef  TYPE_1__ DRV_SPI_JOB_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_ID_1 ; 

int32_t FUNC2( struct DRV_SPI_OBJ * pDrvObj )
{
    register DRV_SPI_JOB_OBJECT * currentJob = pDrvObj->currentJob;

    /* Check to see if we have any more bytes to transmit */
    if (currentJob->dataLeftToTx + currentJob->dummyLeftToTx == 0)
    {
        return 0;
    }
    /* Check to see if the transmit buffer is empty*/
    if (!FUNC1(SPI_ID_1))
    {
        return 0;
    }
    /* Make sure that we don't have something in progress and overrun the RX buffer */
    if (pDrvObj->symbolsInProgress != 0)
    {
        return 0;
    }
    if (currentJob->dataLeftToTx != 0)
    {
    /* Transmit the data & update the counts */
        FUNC0(SPI_ID_1, currentJob->txBuffer[currentJob->dataTxed]);
        currentJob->dataTxed++;
        currentJob->dataLeftToTx--;
    }
    else
    {
        /* Transmit the dummy data & update the counts */
        FUNC0(SPI_ID_1, 0xff);
        currentJob->dummyLeftToTx--;
    }
    /* We now have a symbol in progress*/
    pDrvObj->symbolsInProgress = 1;

    return 0;
}