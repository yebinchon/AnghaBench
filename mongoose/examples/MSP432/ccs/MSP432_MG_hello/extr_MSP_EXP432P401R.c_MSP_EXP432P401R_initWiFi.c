
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_LOW_TO_HIGH_TRANSITION ;
 int GPIO_PIN0 ;
 int GPIO_PIN1 ;
 int GPIO_PIN5 ;
 int GPIO_PIN6 ;
 int GPIO_PIN7 ;
 int GPIO_PORT_P1 ;
 int GPIO_PORT_P2 ;
 int GPIO_PORT_P3 ;
 int GPIO_PORT_P4 ;
 int GPIO_PRIMARY_MODULE_FUNCTION ;
 int MAP_GPIO_interruptEdgeSelect (int ,int,int ) ;
 int MAP_GPIO_setAsInputPinWithPullDownResistor (int ,int) ;
 int MAP_GPIO_setAsOutputPin (int ,int ) ;
 int MAP_GPIO_setAsPeripheralModuleFunctionInputPin (int ,int ,int ) ;
 int MAP_GPIO_setAsPeripheralModuleFunctionOutputPin (int ,int,int ) ;
 int MAP_GPIO_setOutputHighOnPin (int ,int ) ;
 int MAP_GPIO_setOutputLowOnPin (int ,int ) ;
 int MSP_EXP432P401R_initDMA () ;
 int SPI_init () ;
 int WiFi_init () ;

void MSP_EXP432P401R_initWiFi(void)
{

    MAP_GPIO_setAsOutputPin(GPIO_PORT_P3, GPIO_PIN0);
    MAP_GPIO_setAsOutputPin(GPIO_PORT_P4, GPIO_PIN1);
    MAP_GPIO_setOutputHighOnPin(GPIO_PORT_P3, GPIO_PIN0);
    MAP_GPIO_setOutputLowOnPin(GPIO_PORT_P4, GPIO_PIN1);


    MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(GPIO_PORT_P1,
        GPIO_PIN5 | GPIO_PIN6, GPIO_PRIMARY_MODULE_FUNCTION);
    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1, GPIO_PIN7,
        GPIO_PRIMARY_MODULE_FUNCTION);


    MAP_GPIO_setAsInputPinWithPullDownResistor(GPIO_PORT_P2, GPIO_PIN5);
    MAP_GPIO_interruptEdgeSelect(GPIO_PORT_P2, GPIO_PIN5,
        GPIO_LOW_TO_HIGH_TRANSITION);


    MSP_EXP432P401R_initDMA();
    SPI_init();
    WiFi_init();
}
