#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct DRV_SPI_DRIVER_OBJECT {int /*<<< orphan*/  baudRate; int /*<<< orphan*/  currentBaudRate; } ;
typedef  int int32_t ;
struct TYPE_3__ {int clockMode; scalar_t__ spiMode; int spiProtocolType; int /*<<< orphan*/  frameSyncPulse; int /*<<< orphan*/  framePulseWidth; int /*<<< orphan*/  framePulseEdge; int /*<<< orphan*/  framePulsePolarity; int /*<<< orphan*/  framePulseDirection; int /*<<< orphan*/  baudRate; int /*<<< orphan*/  spiClk; int /*<<< orphan*/  commWidth; scalar_t__ spiSlaveSSPin; int /*<<< orphan*/  inputSamplePhase; scalar_t__ allowIdleRun; int /*<<< orphan*/  spiId; } ;
typedef  int /*<<< orphan*/  SPI_MODULE_ID ;
typedef  TYPE_1__ DRV_SPI_INIT ;

/* Variables and functions */
#define  DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_FALL 134 
#define  DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_RISE 133 
#define  DRV_SPI_CLOCK_MODE_IDLE_LOW_EDGE_FALL 132 
#define  DRV_SPI_CLOCK_MODE_IDLE_LOW_EDGE_RISE 131 
 scalar_t__ DRV_SPI_MODE_SLAVE ; 
#define  DRV_SPI_PROTOCOL_TYPE_AUDIO 130 
#define  DRV_SPI_PROTOCOL_TYPE_FRAMED 129 
#define  DRV_SPI_PROTOCOL_TYPE_STANDARD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  SPI_CLOCK_POLARITY_IDLE_HIGH ; 
 int /*<<< orphan*/  SPI_CLOCK_POLARITY_IDLE_LOW ; 
 int /*<<< orphan*/  SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY ; 
 int /*<<< orphan*/  SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY ; 
 int /*<<< orphan*/  SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK ; 
 int /*<<< orphan*/  SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK ; 
 int /*<<< orphan*/  SPI_PIN_SLAVE_SELECT ; 
 int /*<<< orphan*/  FUNC27 (int,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

int32_t FUNC29(struct DRV_SPI_DRIVER_OBJECT * driverObject, const DRV_SPI_INIT * const init)
{
    const register SPI_MODULE_ID spiId = init->spiId;

/* disable the SPI*/
    FUNC4(spiId);

    /* Set up Master or Slave Mode*/
    FUNC20 ( spiId  );

    /* Set up if the SPI is allowed to run while the rest of the CPU is in idle mode*/
    if (init->allowIdleRun)
    {
        FUNC25( spiId  );
    }
    else
    {
        FUNC26( spiId  );
    }

    /* Set up close Polarity and output data phase*/
    switch(init->clockMode)
    {
        case DRV_SPI_CLOCK_MODE_IDLE_LOW_EDGE_RISE:
            FUNC2( spiId, SPI_CLOCK_POLARITY_IDLE_LOW );
            FUNC21( spiId, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );
            break;
        case DRV_SPI_CLOCK_MODE_IDLE_LOW_EDGE_FALL:
            FUNC2( spiId, SPI_CLOCK_POLARITY_IDLE_LOW );
            FUNC21( spiId, SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK );
            break;
        case DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_FALL: //TODO: Make sure these are right
            FUNC2( spiId, SPI_CLOCK_POLARITY_IDLE_HIGH );
            FUNC21( spiId, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );
            break;
        case DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_RISE:
            FUNC2( spiId, SPI_CLOCK_POLARITY_IDLE_HIGH );
            FUNC21( spiId, SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK );
            break;
        default:
             FUNC27(false, "\r\nInvalid SPI Configuration.");
            return -1;
    }

    // Set up the  Input Sample Phase
    FUNC19 ( spiId, init->inputSamplePhase);

    //Enable the SSx Pin on slave side if needed
    if(init->spiMode == DRV_SPI_MODE_SLAVE && (init->spiProtocolType == DRV_SPI_PROTOCOL_TYPE_FRAMED || init->spiSlaveSSPin))
    {
        FUNC23(spiId, SPI_PIN_SLAVE_SELECT);
    }
    else
    {
        FUNC22(spiId, SPI_PIN_SLAVE_SELECT);
    }

    /* Communication Width Selection */
    FUNC3 ( spiId, init->commWidth );

    /* Baudrate selection */
    FUNC0( spiId , FUNC28(init->spiClk), init->baudRate );
    driverObject->currentBaudRate = init->baudRate;
    driverObject->baudRate = init->baudRate;

    switch (init->spiProtocolType)
    {
        case DRV_SPI_PROTOCOL_TYPE_STANDARD:
             FUNC17( spiId  );
             break;

        case DRV_SPI_PROTOCOL_TYPE_FRAMED:

            #if defined (PLIB_SPI_ExistsFrameSyncPulseDirection)
                if (PLIB_SPI_ExistsFrameSyncPulseDirection(spiId))
                {
                    PLIB_SPI_FrameSyncPulseDirectionSelect(spiId, init->framePulseDirection);
                }
            #endif
            #if defined (PLIB_SPI_ExistsFrameSyncPulsePolarity)
                if (PLIB_SPI_ExistsFrameSyncPulsePolarity(spiId))
                {
                    PLIB_SPI_FrameSyncPulsePolaritySelect(spiId, init->framePulsePolarity);
                }
            #endif
            #if defined (PLIB_SPI_ExistsFrameSyncPulseEdge)
                if (PLIB_SPI_ExistsFrameSyncPulseEdge(spiId))
                {
                    PLIB_SPI_FrameSyncPulseEdgeSelect(spiId, init->framePulseEdge);
                }
            #endif
            #if defined (PLIB_SPI_ExistsFrameSyncPulseWidth)
                if (PLIB_SPI_ExistsFrameSyncPulseWidth(spiId))
                {
                    PLIB_SPI_FrameSyncPulseWidthSelect(spiId, init->framePulseWidth);
                }
            #endif
            #if defined (PLIB_SPI_ExistsFrameSyncPulseCounter)
                if (PLIB_SPI_ExistsFrameSyncPulseCounter(spiId))
                {
                    PLIB_SPI_FrameSyncPulseCounterSelect(spiId, init->frameSyncPulse);
                }
            #endif


            FUNC18( spiId  );
            break;

        case DRV_SPI_PROTOCOL_TYPE_AUDIO:
             FUNC17( spiId  );

             {
                 FUNC27(false, "\r\nInvalid SPI Configuration.");
                return -1;
             }
             break;
        default:
             FUNC27(false, "\r\nInvalid SPI Configuration.");
            return -1;
    }

    FUNC10( spiId  );
    FUNC11(spiId, SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY);
    FUNC11(spiId, SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY);

    FUNC1( spiId );
    FUNC24 ( spiId );

    // Note: We do not enable the SPI here, that will be done by the first client.
    return 0;
}