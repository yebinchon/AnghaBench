
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int PATTERN_INDEX; } ;
 TYPE_1__ USER_CONFIG ;
 int ktli (int) ;
 int layer_state ;
 int set_indicator_led_rgb (int ,int,int ,int,int) ;
 int unset_indicator_led_rgb (int ,int) ;

void refresh_pattern_indicators(void){
    static uint8_t GRV_123456[] = {
        128, 134, 133, 132, 131, 130, 129,
    };

    if(layer_state >= 0x04){
        for(uint8_t i = 0; i < 7; ++i){
            if(i == USER_CONFIG.PATTERN_INDEX){
                set_indicator_led_rgb(ktli(GRV_123456[i]), 2, 0, 0, 255);
            } else{
                set_indicator_led_rgb(ktli(GRV_123456[i]), 2, 0, 255, 0);
            }
        }
    } else{
        for(uint8_t i = 0; i < 7; ++i){
            unset_indicator_led_rgb(ktli(GRV_123456[i]), 2);
        }
    }
}
