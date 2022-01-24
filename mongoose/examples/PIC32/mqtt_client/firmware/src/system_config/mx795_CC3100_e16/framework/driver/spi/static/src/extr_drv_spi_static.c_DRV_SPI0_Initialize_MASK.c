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
struct TYPE_6__ {int maxElements; int reserveElements; } ;
struct TYPE_5__ {int numTrfsSmPolled; int /*<<< orphan*/ * operationEnded; int /*<<< orphan*/ * operationStarting; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  SYS_MODULE_OBJ ;
typedef  TYPE_1__ DRV_SPI_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_BUS_PERIPHERAL_2 ; 
 int /*<<< orphan*/  DRV_SPI_INDEX_0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_CLOCK_POLARITY_IDLE_LOW ; 
 int /*<<< orphan*/  SPI_COMMUNICATION_WIDTH_8BITS ; 
 int /*<<< orphan*/  SPI_ID_1 ; 
 int /*<<< orphan*/  SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE ; 
 int /*<<< orphan*/  SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK ; 
 int /*<<< orphan*/  SPI_PIN_SLAVE_SELECT ; 
 int /*<<< orphan*/  FUNC19 (int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_MODULE_OBJ_INVALID ; 
 TYPE_1__ gDrvSPI0Obj ; 
 int /*<<< orphan*/  hQueueManager ; 
 TYPE_2__ qInitData ; 
 int /*<<< orphan*/  qmInitData ; 

SYS_MODULE_OBJ FUNC21(void)
{
    DRV_SPI_OBJ *dObj = (DRV_SPI_OBJ*)NULL;

    dObj = &gDrvSPI0Obj;

    /* Disable the SPI module to configure it*/
    FUNC7 ( SPI_ID_1 );

    /* Set up Master or Slave Mode*/
    FUNC14 ( SPI_ID_1 );
    FUNC16(SPI_ID_1, SPI_PIN_SLAVE_SELECT);

    /* Set up if the SPI is allowed to run while the rest of the CPU is in idle mode*/
    FUNC18( SPI_ID_1 );

    /* Set up clock Polarity and output data phase*/
    FUNC5( SPI_ID_1, SPI_CLOCK_POLARITY_IDLE_LOW );
    FUNC15( SPI_ID_1, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );

    /* Set up the Input Sample Phase*/
    FUNC13 ( SPI_ID_1, SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE);

    /* Communication Width Selection */
    FUNC6 ( SPI_ID_1, SPI_COMMUNICATION_WIDTH_8BITS );

    /* Baud rate selection */
    FUNC3( SPI_ID_1 , FUNC20(CLK_BUS_PERIPHERAL_2), 10000000 );

    /* Protocol selection */
    FUNC12( SPI_ID_1  );
    #if defined (PLIB_SPI_ExistsAudioProtocolControl)
            if (PLIB_SPI_ExistsAudioProtocolControl(SPI_ID_1))
            {
                PLIB_SPI_AudioProtocolDisable(SPI_ID_1);
            }
    #endif

    /* Buffer type selection */
    #if defined (PLIB_SPI_ExistsFIFOControl)
        if (PLIB_SPI_ExistsFIFOControl( SPI_ID_1 ))
        {
            PLIB_SPI_FIFODisable( SPI_ID_1 );
        }
    #endif

    FUNC4( SPI_ID_1 );
    FUNC17 ( SPI_ID_1 );

    /* Initialize Queue only once for all instances of SPI driver*/
    if (FUNC1(&qmInitData, &hQueueManager) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        FUNC19(false, "\r\nSPI Driver: Could not create queuing system.");
        return SYS_MODULE_OBJ_INVALID;
    }

    /* Update the Queue parameters. */
    qInitData.maxElements = 10; //Queue size
    qInitData.reserveElements = 1; //Mininmum number of job queues reserved

    /* Create Queue for this instance of SPI */
    if (FUNC0(hQueueManager, &qInitData, &dObj->queue) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        FUNC19(false, "\r\nSPI Driver: Could not set up driver instance queue.");
        return SYS_MODULE_OBJ_INVALID;

    }

    /* Update the SPI OBJECT parameters. */
    dObj->operationStarting = NULL;
    dObj->operationEnded = NULL;
    dObj->numTrfsSmPolled = 16;

    /* Enable the Module */
    FUNC8(SPI_ID_1);

    return (SYS_MODULE_OBJ)DRV_SPI_INDEX_0 ;
}