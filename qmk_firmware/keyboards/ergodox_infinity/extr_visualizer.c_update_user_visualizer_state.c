
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_state_t ;
typedef int visualizer_keyboard_status_t ;


 int update_emulated_leds (int *,int *) ;
 int update_lcd_text (int *,int *) ;

void update_user_visualizer_state(visualizer_state_t* state, visualizer_keyboard_status_t* prev_status) {
    update_emulated_leds(state, prev_status);
    update_lcd_text(state, prev_status);

}
