
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_BRIGHTNESS ;
 int SETTING_COLOR ;
 int SETTING_CONTRAST ;
 int SETTING_GAMMA ;
 int SETTING_HUESHIFT ;
 int SETTING_OPACITY ;
 int SETTING_SATURATION ;
 int obs_data_set_default_double (int *,int ,double) ;
 int obs_data_set_default_int (int *,int ,int) ;

__attribute__((used)) static void color_correction_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_double(settings, SETTING_GAMMA, 0.0);
 obs_data_set_default_double(settings, SETTING_CONTRAST, 0.0);
 obs_data_set_default_double(settings, SETTING_BRIGHTNESS, 0.0);
 obs_data_set_default_double(settings, SETTING_SATURATION, 0.0);
 obs_data_set_default_double(settings, SETTING_HUESHIFT, 0.0);
 obs_data_set_default_double(settings, SETTING_OPACITY, 100.0);
 obs_data_set_default_int(settings, SETTING_COLOR, 0xFFFFFF);
}
