
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_frame; int need_update; scalar_t__ time_left_in_frame; } ;
typedef TYPE_1__ keyframe_animation_t ;


 int MAX_SIMULTANEOUS_ANIMATIONS ;
 TYPE_1__** animations ;

void start_keyframe_animation(keyframe_animation_t* animation) {
    animation->current_frame = -1;
    animation->time_left_in_frame = 0;
    animation->need_update = 1;
    int free_index = -1;
    for (int i = 0; i < MAX_SIMULTANEOUS_ANIMATIONS; i++) {
        if (animations[i] == animation) {
            return;
        }
        if (free_index == -1 && animations[i] == ((void*)0)) {
            free_index = i;
        }
    }
    if (free_index != -1) {
        animations[free_index] = animation;
    }
}
