
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int SETTING_LUMA_MAX ;
 int SETTING_LUMA_MAX_SMOOTH ;
 int SETTING_LUMA_MIN ;
 int SETTING_LUMA_MIN_SMOOTH ;
 int TEXT_LUMA_MAX ;
 int TEXT_LUMA_MAX_SMOOTH ;
 int TEXT_LUMA_MIN ;
 int TEXT_LUMA_MIN_SMOOTH ;
 int UNUSED_PARAMETER (void*) ;
 int obs_properties_add_float_slider (int *,int ,int ,int ,int,double) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *luma_key_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_properties_add_float_slider(props, SETTING_LUMA_MAX, TEXT_LUMA_MAX,
     0, 1, 0.01);
 obs_properties_add_float_slider(props, SETTING_LUMA_MAX_SMOOTH,
     TEXT_LUMA_MAX_SMOOTH, 0, 1, 0.01);
 obs_properties_add_float_slider(props, SETTING_LUMA_MIN, TEXT_LUMA_MIN,
     0, 1, 0.01);
 obs_properties_add_float_slider(props, SETTING_LUMA_MIN_SMOOTH,
     TEXT_LUMA_MIN_SMOOTH, 0, 1, 0.01);

 UNUSED_PARAMETER(data);
 return props;
}
