
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANIMATION_SPEED_STEP ;
 int led_animation_speed ;
 int led_per_run ;

void rgb_matrix_init_user(void){
    led_animation_speed = ANIMATION_SPEED_STEP * 15;
    led_per_run = 15;
}
