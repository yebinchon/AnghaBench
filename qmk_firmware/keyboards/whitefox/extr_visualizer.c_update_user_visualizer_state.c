
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_state_t ;
typedef int visualizer_keyboard_status_t ;


 int initial_update ;
 int led_test_animation ;
 int start_keyframe_animation (int *) ;

void update_user_visualizer_state(visualizer_state_t* state, visualizer_keyboard_status_t* prev_status) {
    if (initial_update) { initial_update=0; start_keyframe_animation(&led_test_animation); }
}
