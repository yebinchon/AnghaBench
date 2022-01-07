
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PIN6 ;
 int GPIO_PIN7 ;
 int GPIO_PORT_P1 ;
 int GPIO_PRIMARY_MODULE_FUNCTION ;
 int I2C_init () ;
 int MAP_GPIO_setAsPeripheralModuleFunctionInputPin (int ,int,int ) ;

void MSP_EXP432P401R_initI2C(void)
{







    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1,
        GPIO_PIN6 | GPIO_PIN7, GPIO_PRIMARY_MODULE_FUNCTION);


    I2C_init();
}
