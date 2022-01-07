
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 TYPE_1__* USER_LED ;

void unset_user_led_rgb(uint8_t i){
    USER_LED[i-1].state = 0;
}
