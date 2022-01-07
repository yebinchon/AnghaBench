
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GREEN_LED ;
 int LED_OFF ;
 int LED_ON ;
 int RED_LED ;
 int YELLOW_LED ;

void led_state(int led, int state) {
    int val = state ? LED_ON : LED_OFF;
    switch (led) {
        case 1: RED_LED = val; break;
        case 2: YELLOW_LED = val; break;
        case 3: GREEN_LED = val; break;
    }
}
