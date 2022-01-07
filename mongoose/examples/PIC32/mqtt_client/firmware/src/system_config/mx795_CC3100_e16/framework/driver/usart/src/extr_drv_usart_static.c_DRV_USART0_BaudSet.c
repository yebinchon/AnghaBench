
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int DRV_USART_BAUD_SET_RESULT ;


 int CLK_BUS_PERIPHERAL_1 ;
 int DRV_USART_BAUD_SET_ERROR ;
 int DRV_USART_BAUD_SET_SUCCESS ;
 int PLIB_USART_BaudRateHighDisable (int ) ;
 int PLIB_USART_BaudRateHighEnable (int ) ;
 int PLIB_USART_BaudRateHighSet (int ,int,int) ;
 int PLIB_USART_BaudRateSet (int ,int,int) ;
 int PLIB_USART_Disable (int ) ;
 int PLIB_USART_Enable (int ) ;
 int PLIB_USART_ModuleIsBusy (int ) ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;
 int UINT16_MAX ;
 int USART_ID_2 ;

DRV_USART_BAUD_SET_RESULT DRV_USART0_BaudSet(uint32_t baud)
{
    uint32_t clockSource;
    int32_t brgValueLow=0;
    int32_t brgValueHigh=0;
    DRV_USART_BAUD_SET_RESULT retVal = DRV_USART_BAUD_SET_SUCCESS;





    clockSource = SYS_CLK_PeripheralFrequencyGet ( CLK_BUS_PERIPHERAL_1 );


    brgValueLow = ( (clockSource/baud) >> 4 ) - 1;
    brgValueHigh = ( (clockSource/baud) >> 2 ) - 1;
    if ((brgValueHigh >= 0) && (brgValueHigh <= UINT16_MAX))
    {
        PLIB_USART_BaudRateHighEnable(USART_ID_2);
        PLIB_USART_BaudRateHighSet(USART_ID_2,clockSource,baud);
    }


    else if ((brgValueLow >= 0) && (brgValueLow <= UINT16_MAX))
    {
        PLIB_USART_BaudRateHighDisable(USART_ID_2);
        PLIB_USART_BaudRateSet(USART_ID_2, clockSource, baud);
    }
    else
    {
            retVal = DRV_USART_BAUD_SET_ERROR;
    }
    return retVal;
}
