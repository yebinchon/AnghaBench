
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_state_t ;


 int default_startup_animation ;
 int initial_update ;
 int start_keyframe_animation (int *) ;

void initialize_user_visualizer(visualizer_state_t* state) {


    initial_update = 1;
    start_keyframe_animation(&default_startup_animation);
}
