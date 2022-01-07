
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int SYS_MODULE_OBJ ;


 int CLK_BUS_PERIPHERAL_1 ;
 int DRV_USART_INDEX_0 ;
 int DRV_USART_LINE_CONTROL_8NONE1 ;
 int INT_SOURCE_USART_2_ERROR ;
 int INT_SOURCE_USART_2_RECEIVE ;
 int INT_SOURCE_USART_2_TRANSMIT ;
 int PLIB_USART_BaudSetAndEnable (int ,int ,int) ;
 int PLIB_USART_Disable (int ) ;
 int PLIB_USART_InitializeModeGeneral (int ,int,int,int,int,int) ;
 int PLIB_USART_InitializeOperation (int ,int ,int ,int ) ;
 int PLIB_USART_LineControlModeSelect (int ,int ) ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;
 int SYS_INT_SourceEnable (int ) ;
 int SYS_INT_SourceStatusClear (int ) ;
 int USART_ENABLE_TX_RX_USED ;
 int USART_ID_2 ;
 int USART_RECEIVE_FIFO_ONE_CHAR ;
 int USART_TRANSMIT_FIFO_IDLE ;

SYS_MODULE_OBJ DRV_USART0_Initialize(void)
{
    uint32_t clockSource;


    PLIB_USART_Disable (USART_ID_2);


    PLIB_USART_InitializeModeGeneral(USART_ID_2,
            0,
            0,
            0,
            0,
            0);


    PLIB_USART_LineControlModeSelect(USART_ID_2, DRV_USART_LINE_CONTROL_8NONE1);



    PLIB_USART_InitializeOperation(USART_ID_2,
            USART_RECEIVE_FIFO_ONE_CHAR,
            USART_TRANSMIT_FIFO_IDLE,
            USART_ENABLE_TX_RX_USED);


    clockSource = SYS_CLK_PeripheralFrequencyGet ( CLK_BUS_PERIPHERAL_1 );


    PLIB_USART_BaudSetAndEnable(USART_ID_2,
            clockSource,
            115200);


    SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_TRANSMIT);
    SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_RECEIVE);
    SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_ERROR);


    SYS_INT_SourceEnable(INT_SOURCE_USART_2_ERROR);


    SYS_INT_SourceEnable(INT_SOURCE_USART_2_RECEIVE);


    return (SYS_MODULE_OBJ)DRV_USART_INDEX_0;
}
