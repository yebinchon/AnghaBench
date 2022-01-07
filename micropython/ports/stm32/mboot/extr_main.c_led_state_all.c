
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED0 ;
 int LED1 ;
 int LED2 ;
 int LED3 ;
 int led_state (int ,unsigned int) ;

void led_state_all(unsigned int mask) {
    led_state(LED0, mask & 1);
    led_state(LED1, mask & 2);






}
