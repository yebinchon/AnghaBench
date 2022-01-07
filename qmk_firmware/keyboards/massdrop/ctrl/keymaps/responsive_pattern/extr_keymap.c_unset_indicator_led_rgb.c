
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* USER_LED ;

void unset_indicator_led_rgb(uint8_t i, uint8_t layer){
    USER_LED[i-1].state &= ~(1 << layer);
}
