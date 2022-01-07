
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_BRIGHTNESS ;
 int SETTING_COLOR_TYPE ;
 int SETTING_CONTRAST ;
 int SETTING_GAMMA ;
 int SETTING_KEY_COLOR ;
 int SETTING_OPACITY ;
 int SETTING_SIMILARITY ;
 int SETTING_SMOOTHNESS ;
 int SETTING_SPILL ;
 int obs_data_set_default_double (int *,int ,double) ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void chroma_key_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, SETTING_OPACITY, 100);
 obs_data_set_default_double(settings, SETTING_CONTRAST, 0.0);
 obs_data_set_default_double(settings, SETTING_BRIGHTNESS, 0.0);
 obs_data_set_default_double(settings, SETTING_GAMMA, 0.0);
 obs_data_set_default_int(settings, SETTING_KEY_COLOR, 0x00FF00);
 obs_data_set_default_string(settings, SETTING_COLOR_TYPE, "green");
 obs_data_set_default_int(settings, SETTING_SIMILARITY, 400);
 obs_data_set_default_int(settings, SETTING_SMOOTHNESS, 80);
 obs_data_set_default_int(settings, SETTING_SPILL, 100);
}
