
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_LUMA_MAX ;
 int SETTING_LUMA_MAX_SMOOTH ;
 int SETTING_LUMA_MIN ;
 int SETTING_LUMA_MIN_SMOOTH ;
 int obs_data_set_default_double (int *,int ,double) ;

__attribute__((used)) static void luma_key_defaults(obs_data_t *settings)
{
 obs_data_set_default_double(settings, SETTING_LUMA_MAX, 1.0);
 obs_data_set_default_double(settings, SETTING_LUMA_MIN, 0.0);
 obs_data_set_default_double(settings, SETTING_LUMA_MAX_SMOOTH, 0.0);
 obs_data_set_default_double(settings, SETTING_LUMA_MIN_SMOOTH, 0.0);
}
