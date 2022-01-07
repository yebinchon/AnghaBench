
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 scalar_t__ HOOK_RATE_NORMAL ;
 int SETTING_ANTI_CHEAT_HOOK ;
 int SETTING_CAPTURE_OVERLAYS ;
 int SETTING_COMPATIBILITY ;
 int SETTING_CURSOR ;
 int SETTING_FORCE_SCALING ;
 int SETTING_HOOK_RATE ;
 int SETTING_LIMIT_FRAMERATE ;
 int SETTING_MODE ;
 char* SETTING_MODE_ANY ;
 int SETTING_SCALE_RES ;
 int SETTING_TRANSPARENCY ;
 int SETTING_WINDOW_PRIORITY ;
 scalar_t__ WINDOW_PRIORITY_EXE ;
 int obs_data_set_default_bool (int *,int ,int) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void game_capture_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, SETTING_MODE, SETTING_MODE_ANY);
 obs_data_set_default_int(settings, SETTING_WINDOW_PRIORITY,
     (int)WINDOW_PRIORITY_EXE);
 obs_data_set_default_bool(settings, SETTING_COMPATIBILITY, 0);
 obs_data_set_default_bool(settings, SETTING_FORCE_SCALING, 0);
 obs_data_set_default_bool(settings, SETTING_CURSOR, 1);
 obs_data_set_default_bool(settings, SETTING_TRANSPARENCY, 0);
 obs_data_set_default_string(settings, SETTING_SCALE_RES, "0x0");
 obs_data_set_default_bool(settings, SETTING_LIMIT_FRAMERATE, 0);
 obs_data_set_default_bool(settings, SETTING_CAPTURE_OVERLAYS, 0);
 obs_data_set_default_bool(settings, SETTING_ANTI_CHEAT_HOOK, 1);
 obs_data_set_default_int(settings, SETTING_HOOK_RATE,
     (int)HOOK_RATE_NORMAL);
}
