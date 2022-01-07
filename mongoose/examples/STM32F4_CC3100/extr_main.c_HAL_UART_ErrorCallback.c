
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UART_HandleTypeDef ;


 int BSP_LED_On (int ) ;
 int LED4 ;

void HAL_UART_ErrorCallback(UART_HandleTypeDef *UartHandle) {

  BSP_LED_On(LED4);
}
