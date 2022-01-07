
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GREEN_LED ;
 scalar_t__ GREEN_LED_TRIS ;
 void* LED_OFF ;
 void* RED_LED ;
 scalar_t__ RED_LED_TRIS ;
 void* YELLOW_LED ;
 scalar_t__ YELLOW_LED_TRIS ;

void led_init(void) {

    RED_LED_TRIS = 0;
    YELLOW_LED_TRIS = 0;
    GREEN_LED_TRIS = 0;


    RED_LED = LED_OFF;
    YELLOW_LED = LED_OFF;
    GREEN_LED = LED_OFF;
}
