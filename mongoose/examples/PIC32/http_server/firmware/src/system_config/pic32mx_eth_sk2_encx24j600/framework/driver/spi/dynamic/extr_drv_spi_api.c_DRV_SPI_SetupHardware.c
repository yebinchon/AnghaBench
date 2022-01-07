
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct DRV_SPI_DRIVER_OBJECT {int baudRate; int currentBaudRate; } ;
typedef int int32_t ;
struct TYPE_3__ {int clockMode; scalar_t__ spiMode; int spiProtocolType; int frameSyncPulse; int framePulseWidth; int framePulseEdge; int framePulsePolarity; int framePulseDirection; int baudRate; int spiClk; int commWidth; scalar_t__ spiSlaveSSPin; int inputSamplePhase; scalar_t__ allowIdleRun; int spiId; } ;
typedef int SPI_MODULE_ID ;
typedef TYPE_1__ DRV_SPI_INIT ;






 scalar_t__ DRV_SPI_MODE_SLAVE ;



 int PLIB_SPI_BaudRateSet (int const,int ,int ) ;
 int PLIB_SPI_BufferClear (int const) ;
 int PLIB_SPI_ClockPolaritySelect (int const,int ) ;
 int PLIB_SPI_CommunicationWidthSelect (int const,int ) ;
 int PLIB_SPI_Disable (int const) ;
 int PLIB_SPI_ExistsFrameSyncPulseCounter (int const) ;
 int PLIB_SPI_ExistsFrameSyncPulseDirection (int const) ;
 int PLIB_SPI_ExistsFrameSyncPulseEdge (int const) ;
 int PLIB_SPI_ExistsFrameSyncPulsePolarity (int const) ;
 int PLIB_SPI_ExistsFrameSyncPulseWidth (int const) ;
 int PLIB_SPI_FIFOEnable (int const) ;
 int PLIB_SPI_FIFOInterruptModeSelect (int const,int ) ;
 int PLIB_SPI_FrameSyncPulseCounterSelect (int const,int ) ;
 int PLIB_SPI_FrameSyncPulseDirectionSelect (int const,int ) ;
 int PLIB_SPI_FrameSyncPulseEdgeSelect (int const,int ) ;
 int PLIB_SPI_FrameSyncPulsePolaritySelect (int const,int ) ;
 int PLIB_SPI_FrameSyncPulseWidthSelect (int const,int ) ;
 int PLIB_SPI_FramedCommunicationDisable (int const) ;
 int PLIB_SPI_FramedCommunicationEnable (int const) ;
 int PLIB_SPI_InputSamplePhaseSelect (int const,int ) ;
 int PLIB_SPI_MasterEnable (int const) ;
 int PLIB_SPI_OutputDataPhaseSelect (int const,int ) ;
 int PLIB_SPI_PinDisable (int const,int ) ;
 int PLIB_SPI_PinEnable (int const,int ) ;
 int PLIB_SPI_ReceiverOverflowClear (int const) ;
 int PLIB_SPI_StopInIdleDisable (int const) ;
 int PLIB_SPI_StopInIdleEnable (int const) ;
 int SPI_CLOCK_POLARITY_IDLE_HIGH ;
 int SPI_CLOCK_POLARITY_IDLE_LOW ;
 int SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY ;
 int SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY ;
 int SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK ;
 int SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK ;
 int SPI_PIN_SLAVE_SELECT ;
 int SYS_ASSERT (int,char*) ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;

int32_t DRV_SPI_SetupHardware(struct DRV_SPI_DRIVER_OBJECT * driverObject, const DRV_SPI_INIT * const init)
{
    const register SPI_MODULE_ID spiId = init->spiId;


    PLIB_SPI_Disable(spiId);


    PLIB_SPI_MasterEnable ( spiId );


    if (init->allowIdleRun)
    {
        PLIB_SPI_StopInIdleDisable( spiId );
    }
    else
    {
        PLIB_SPI_StopInIdleEnable( spiId );
    }


    switch(init->clockMode)
    {
        case 131:
            PLIB_SPI_ClockPolaritySelect( spiId, SPI_CLOCK_POLARITY_IDLE_LOW );
            PLIB_SPI_OutputDataPhaseSelect( spiId, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );
            break;
        case 132:
            PLIB_SPI_ClockPolaritySelect( spiId, SPI_CLOCK_POLARITY_IDLE_LOW );
            PLIB_SPI_OutputDataPhaseSelect( spiId, SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK );
            break;
        case 134:
            PLIB_SPI_ClockPolaritySelect( spiId, SPI_CLOCK_POLARITY_IDLE_HIGH );
            PLIB_SPI_OutputDataPhaseSelect( spiId, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );
            break;
        case 133:
            PLIB_SPI_ClockPolaritySelect( spiId, SPI_CLOCK_POLARITY_IDLE_HIGH );
            PLIB_SPI_OutputDataPhaseSelect( spiId, SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK );
            break;
        default:
             SYS_ASSERT(0, "\r\nInvalid SPI Configuration.");
            return -1;
    }


    PLIB_SPI_InputSamplePhaseSelect ( spiId, init->inputSamplePhase);


    if(init->spiMode == DRV_SPI_MODE_SLAVE && (init->spiProtocolType == 129 || init->spiSlaveSSPin))
    {
        PLIB_SPI_PinEnable(spiId, SPI_PIN_SLAVE_SELECT);
    }
    else
    {
        PLIB_SPI_PinDisable(spiId, SPI_PIN_SLAVE_SELECT);
    }


    PLIB_SPI_CommunicationWidthSelect ( spiId, init->commWidth );


    PLIB_SPI_BaudRateSet( spiId , SYS_CLK_PeripheralFrequencyGet(init->spiClk), init->baudRate );
    driverObject->currentBaudRate = init->baudRate;
    driverObject->baudRate = init->baudRate;

    switch (init->spiProtocolType)
    {
        case 128:
             PLIB_SPI_FramedCommunicationDisable( spiId );
             break;

        case 129:
            PLIB_SPI_FramedCommunicationEnable( spiId );
            break;

        case 130:
             PLIB_SPI_FramedCommunicationDisable( spiId );

             {
                 SYS_ASSERT(0, "\r\nInvalid SPI Configuration.");
                return -1;
             }
             break;
        default:
             SYS_ASSERT(0, "\r\nInvalid SPI Configuration.");
            return -1;
    }

    PLIB_SPI_FIFOEnable( spiId );
    PLIB_SPI_FIFOInterruptModeSelect(spiId, SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY);
    PLIB_SPI_FIFOInterruptModeSelect(spiId, SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY);

    PLIB_SPI_BufferClear( spiId );
    PLIB_SPI_ReceiverOverflowClear ( spiId );


    return 0;
}
