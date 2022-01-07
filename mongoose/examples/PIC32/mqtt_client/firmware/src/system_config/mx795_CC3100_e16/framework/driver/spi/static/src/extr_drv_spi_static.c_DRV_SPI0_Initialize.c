
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int maxElements; int reserveElements; } ;
struct TYPE_5__ {int numTrfsSmPolled; int * operationEnded; int * operationStarting; int queue; } ;
typedef int SYS_MODULE_OBJ ;
typedef TYPE_1__ DRV_SPI_OBJ ;


 int CLK_BUS_PERIPHERAL_2 ;
 int DRV_SPI_INDEX_0 ;
 scalar_t__ DRV_SPI_SYS_QUEUE_CreateQueue (int ,TYPE_2__*,int *) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_Initialize (int *,int *) ;
 scalar_t__ DRV_SPI_SYS_QUEUE_SUCCESS ;
 int PLIB_SPI_AudioProtocolDisable (int ) ;
 int PLIB_SPI_BaudRateSet (int ,int ,int) ;
 int PLIB_SPI_BufferClear (int ) ;
 int PLIB_SPI_ClockPolaritySelect (int ,int ) ;
 int PLIB_SPI_CommunicationWidthSelect (int ,int ) ;
 int PLIB_SPI_Disable (int ) ;
 int PLIB_SPI_Enable (int ) ;
 scalar_t__ PLIB_SPI_ExistsAudioProtocolControl (int ) ;
 scalar_t__ PLIB_SPI_ExistsFIFOControl (int ) ;
 int PLIB_SPI_FIFODisable (int ) ;
 int PLIB_SPI_FramedCommunicationDisable (int ) ;
 int PLIB_SPI_InputSamplePhaseSelect (int ,int ) ;
 int PLIB_SPI_MasterEnable (int ) ;
 int PLIB_SPI_OutputDataPhaseSelect (int ,int ) ;
 int PLIB_SPI_PinDisable (int ,int ) ;
 int PLIB_SPI_ReceiverOverflowClear (int ) ;
 int PLIB_SPI_StopInIdleEnable (int ) ;
 int SPI_CLOCK_POLARITY_IDLE_LOW ;
 int SPI_COMMUNICATION_WIDTH_8BITS ;
 int SPI_ID_1 ;
 int SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE ;
 int SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK ;
 int SPI_PIN_SLAVE_SELECT ;
 int SYS_ASSERT (int,char*) ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;
 int SYS_MODULE_OBJ_INVALID ;
 TYPE_1__ gDrvSPI0Obj ;
 int hQueueManager ;
 TYPE_2__ qInitData ;
 int qmInitData ;

SYS_MODULE_OBJ DRV_SPI0_Initialize(void)
{
    DRV_SPI_OBJ *dObj = (DRV_SPI_OBJ*)((void*)0);

    dObj = &gDrvSPI0Obj;


    PLIB_SPI_Disable ( SPI_ID_1 );


    PLIB_SPI_MasterEnable ( SPI_ID_1 );
    PLIB_SPI_PinDisable(SPI_ID_1, SPI_PIN_SLAVE_SELECT);


    PLIB_SPI_StopInIdleEnable( SPI_ID_1 );


    PLIB_SPI_ClockPolaritySelect( SPI_ID_1, SPI_CLOCK_POLARITY_IDLE_LOW );
    PLIB_SPI_OutputDataPhaseSelect( SPI_ID_1, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK );


    PLIB_SPI_InputSamplePhaseSelect ( SPI_ID_1, SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE);


    PLIB_SPI_CommunicationWidthSelect ( SPI_ID_1, SPI_COMMUNICATION_WIDTH_8BITS );


    PLIB_SPI_BaudRateSet( SPI_ID_1 , SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2), 10000000 );


    PLIB_SPI_FramedCommunicationDisable( SPI_ID_1 );
    PLIB_SPI_BufferClear( SPI_ID_1 );
    PLIB_SPI_ReceiverOverflowClear ( SPI_ID_1 );


    if (DRV_SPI_SYS_QUEUE_Initialize(&qmInitData, &hQueueManager) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        SYS_ASSERT(0, "\r\nSPI Driver: Could not create queuing system.");
        return SYS_MODULE_OBJ_INVALID;
    }


    qInitData.maxElements = 10;
    qInitData.reserveElements = 1;


    if (DRV_SPI_SYS_QUEUE_CreateQueue(hQueueManager, &qInitData, &dObj->queue) != DRV_SPI_SYS_QUEUE_SUCCESS)
    {
        SYS_ASSERT(0, "\r\nSPI Driver: Could not set up driver instance queue.");
        return SYS_MODULE_OBJ_INVALID;

    }


    dObj->operationStarting = ((void*)0);
    dObj->operationEnded = ((void*)0);
    dObj->numTrfsSmPolled = 16;


    PLIB_SPI_Enable(SPI_ID_1);

    return (SYS_MODULE_OBJ)DRV_SPI_INDEX_0 ;
}
