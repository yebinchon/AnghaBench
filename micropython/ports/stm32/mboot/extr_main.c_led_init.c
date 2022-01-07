
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED0 ;
 int LED1 ;
 int LED2 ;
 int LED3 ;
 int mp_hal_pin_output (int ) ;

void led_init(void) {
    mp_hal_pin_output(LED0);
    mp_hal_pin_output(LED1);






}
