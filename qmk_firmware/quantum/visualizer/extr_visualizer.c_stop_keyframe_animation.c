
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int need_update; int first_update_of_frame; int last_update_of_frame; scalar_t__ time_left_in_frame; int num_frames; int current_frame; } ;
typedef TYPE_1__ keyframe_animation_t ;


 int MAX_SIMULTANEOUS_ANIMATIONS ;
 TYPE_1__** animations ;

void stop_keyframe_animation(keyframe_animation_t* animation) {
    animation->current_frame = animation->num_frames;
    animation->time_left_in_frame = 0;
    animation->need_update = 1;
    animation->first_update_of_frame = 0;
    animation->last_update_of_frame = 0;
    for (int i = 0; i < MAX_SIMULTANEOUS_ANIMATIONS; i++) {
        if (animations[i] == animation) {
            animations[i] = ((void*)0);
            return;
        }
    }
}
