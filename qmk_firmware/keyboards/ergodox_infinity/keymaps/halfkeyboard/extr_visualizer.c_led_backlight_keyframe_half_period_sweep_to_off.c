
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int visualizer_state_t ;
typedef int uint8_t ;
struct TYPE_3__ {float* frame_lengths; size_t current_frame; float time_left_in_frame; } ;
typedef TYPE_1__ keyframe_animation_t ;


 int LED_DISPLAY ;
 int LUMA2COLOR (int ) ;
 int NUM_COLS ;
 scalar_t__ NUM_ROWS ;
 int gdispGDrawLine (int ,int,int ,int,scalar_t__,int ) ;
 int on_off_gradient (float,int,int) ;

bool led_backlight_keyframe_half_period_sweep_to_off(keyframe_animation_t* animation, visualizer_state_t* state) {
    (void)state;
    float frame_length = animation->frame_lengths[animation->current_frame];
    float current_pos = frame_length - animation->time_left_in_frame;
    float t = current_pos / frame_length;
    for (int i=0; i< NUM_COLS; i++) {
        uint8_t color = on_off_gradient(t*2, i, NUM_COLS);
        gdispGDrawLine(LED_DISPLAY, i, 0, i, NUM_ROWS - 1, LUMA2COLOR(color));
    }
    return 1;
}
