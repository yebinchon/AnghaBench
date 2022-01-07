
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PIN2 ;
 int GPIO_PIN3 ;
 int GPIO_PORT_P1 ;
 int GPIO_PORT_P3 ;
 int GPIO_PRIMARY_MODULE_FUNCTION ;
 int MAP_GPIO_setAsPeripheralModuleFunctionInputPin (int ,int,int ) ;
 int UART_init () ;

void MSP_EXP432P401R_initUART(void)
{

    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1,
        GPIO_PIN2 | GPIO_PIN3, GPIO_PRIMARY_MODULE_FUNCTION);


    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P3,
        GPIO_PIN2 | GPIO_PIN3, GPIO_PRIMARY_MODULE_FUNCTION);


    UART_init();
}
