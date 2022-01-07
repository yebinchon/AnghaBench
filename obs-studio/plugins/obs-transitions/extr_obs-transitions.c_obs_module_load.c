
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cut_transition ;
 int fade_to_color_transition ;
 int fade_transition ;
 int luma_wipe_transition ;
 int obs_register_source (int *) ;
 int slide_transition ;
 int stinger_transition ;
 int swipe_transition ;

bool obs_module_load(void)
{
 obs_register_source(&cut_transition);
 obs_register_source(&fade_transition);
 obs_register_source(&swipe_transition);
 obs_register_source(&slide_transition);
 obs_register_source(&stinger_transition);
 obs_register_source(&fade_to_color_transition);
 obs_register_source(&luma_wipe_transition);
 return 1;
}
