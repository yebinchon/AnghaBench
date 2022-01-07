
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_USART_LINE_CONTROL_SET_RESULT ;
typedef int DRV_USART_LINE_CONTROL ;


 int DRV_USART_LINE_CONTROL_SET_SUCCESS ;
 int PLIB_USART_Disable (int ) ;
 int PLIB_USART_Enable (int ) ;
 int PLIB_USART_LineControlModeSelect (int ,int ) ;
 int PLIB_USART_ModuleIsBusy (int ) ;
 int USART_ID_2 ;

DRV_USART_LINE_CONTROL_SET_RESULT DRV_USART0_LineControlSet(DRV_USART_LINE_CONTROL lineControlMode)
{
    PLIB_USART_LineControlModeSelect(USART_ID_2, lineControlMode);
    return(DRV_USART_LINE_CONTROL_SET_SUCCESS);
}
