
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_COLOR ;
 int SETTING_OPACITY ;
 int SETTING_TYPE ;
 int obs_data_set_default_int (int *,int ,int) ;
 int obs_data_set_default_string (int *,int ,char*) ;

__attribute__((used)) static void mask_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, SETTING_TYPE,
        "mask_color_filter.effect");
 obs_data_set_default_int(settings, SETTING_COLOR, 0xFFFFFF);
 obs_data_set_default_int(settings, SETTING_OPACITY, 100);
}
