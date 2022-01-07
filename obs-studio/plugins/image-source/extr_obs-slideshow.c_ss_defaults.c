
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_BEHAVIOR ;
 char* S_BEHAVIOR_ALWAYS_PLAY ;
 int S_CUSTOM_SIZE ;
 int S_LOOP ;
 int S_MODE ;
 char* S_MODE_AUTO ;
 int S_SLIDE_TIME ;
 int S_TRANSITION ;
 int S_TR_SPEED ;
 char* T_CUSTOM_SIZE_AUTO ;
 int obs_data_set_default_bool (int *,int ,int) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void ss_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, S_TRANSITION, "fade");
 obs_data_set_default_int(settings, S_SLIDE_TIME, 8000);
 obs_data_set_default_int(settings, S_TR_SPEED, 700);
 obs_data_set_default_string(settings, S_CUSTOM_SIZE,
        T_CUSTOM_SIZE_AUTO);
 obs_data_set_default_string(settings, S_BEHAVIOR,
        S_BEHAVIOR_ALWAYS_PLAY);
 obs_data_set_default_string(settings, S_MODE, S_MODE_AUTO);
 obs_data_set_default_bool(settings, S_LOOP, 1);
}
