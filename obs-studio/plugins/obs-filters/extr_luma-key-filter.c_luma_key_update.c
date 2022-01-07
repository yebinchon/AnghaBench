
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_key_filter_data {float luma_max; float luma_min; float luma_max_smooth; float luma_min_smooth; } ;
typedef int obs_data_t ;


 int SETTING_LUMA_MAX ;
 int SETTING_LUMA_MAX_SMOOTH ;
 int SETTING_LUMA_MIN ;
 int SETTING_LUMA_MIN_SMOOTH ;
 double obs_data_get_double (int *,int ) ;

__attribute__((used)) static void luma_key_update(void *data, obs_data_t *settings)
{
 struct luma_key_filter_data *filter = data;

 double lumaMax = obs_data_get_double(settings, SETTING_LUMA_MAX);
 double lumaMin = obs_data_get_double(settings, SETTING_LUMA_MIN);
 double lumaMaxSmooth =
  obs_data_get_double(settings, SETTING_LUMA_MAX_SMOOTH);
 double lumaMinSmooth =
  obs_data_get_double(settings, SETTING_LUMA_MIN_SMOOTH);

 filter->luma_max = (float)lumaMax;
 filter->luma_min = (float)lumaMin;
 filter->luma_max_smooth = (float)lumaMaxSmooth;
 filter->luma_min_smooth = (float)lumaMinSmooth;
}
