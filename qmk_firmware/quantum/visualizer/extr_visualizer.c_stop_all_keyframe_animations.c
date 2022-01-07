
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int need_update; int first_update_of_frame; int last_update_of_frame; scalar_t__ time_left_in_frame; int num_frames; int current_frame; } ;


 int MAX_SIMULTANEOUS_ANIMATIONS ;
 TYPE_1__** animations ;

void stop_all_keyframe_animations(void) {
    for (int i = 0; i < MAX_SIMULTANEOUS_ANIMATIONS; i++) {
        if (animations[i]) {
            animations[i]->current_frame = animations[i]->num_frames;
            animations[i]->time_left_in_frame = 0;
            animations[i]->need_update = 1;
            animations[i]->first_update_of_frame = 0;
            animations[i]->last_update_of_frame = 0;
            animations[i] = ((void*)0);
        }
    }
}
