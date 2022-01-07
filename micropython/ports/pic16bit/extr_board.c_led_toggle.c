
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GREEN_LED ;
 int RED_LED ;
 int YELLOW_LED ;

void led_toggle(int led) {
    switch (led) {
        case 1: RED_LED ^= 1; break;
        case 2: YELLOW_LED ^= 1; break;
        case 3: GREEN_LED ^= 1; break;
    }
}
