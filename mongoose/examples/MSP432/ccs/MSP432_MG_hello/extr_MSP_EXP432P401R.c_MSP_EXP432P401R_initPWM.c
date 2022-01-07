
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIO_PIN1 ;
 int GPIO_PIN2 ;
 int GPIO_PORT_P2 ;
 int GPIO_PRIMARY_MODULE_FUNCTION ;
 int MAP_GPIO_setAsPeripheralModuleFunctionOutputPin (int ,int,int ) ;
 int MAP_PMAP_configurePorts (int const*,int ,int,int ) ;
 int PMAP_DISABLE_RECONFIGURATION ;
 int PMAP_P2MAP ;
 int const PM_NONE ;
 int const PM_TA1CCR1A ;
 int const PM_TA1CCR2A ;
 int PWM_init () ;

void MSP_EXP432P401R_initPWM(void)
{

    const uint8_t portMap [] = {
        PM_NONE, PM_TA1CCR1A, PM_TA1CCR2A, PM_NONE,
        PM_NONE, PM_NONE, PM_NONE, PM_NONE
    };


    MAP_PMAP_configurePorts((const uint8_t *) portMap, PMAP_P2MAP, 1,
        PMAP_DISABLE_RECONFIGURATION);


    MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(GPIO_PORT_P2,
        GPIO_PIN1 | GPIO_PIN2, GPIO_PRIMARY_MODULE_FUNCTION);

    PWM_init();
}
