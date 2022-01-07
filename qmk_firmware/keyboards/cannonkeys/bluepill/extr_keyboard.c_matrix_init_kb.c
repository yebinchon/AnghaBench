
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOB ;
 int LED_OFF () ;
 int LED_ON () ;
 int PAL_MODE_STM32_ALTERNATE_PUSHPULL ;
 int leds_init () ;
 int palSetPadMode (int ,int,int ) ;
 int wait_ms (int) ;

void matrix_init_kb(void){

    palSetPadMode(GPIOB, 15, PAL_MODE_STM32_ALTERNATE_PUSHPULL);
    LED_ON();
    wait_ms(500);
    LED_OFF();




}
