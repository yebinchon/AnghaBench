
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int state; int r; int g; int b; } ;


 TYPE_1__* USER_LED ;

void set_user_led_rgb(uint8_t i, uint8_t r, uint8_t g, uint8_t b){
    USER_LED[i-1].state = 1;
    USER_LED[i-1].r = r;
    USER_LED[i-1].g = g;
    USER_LED[i-1].b = b;
}
