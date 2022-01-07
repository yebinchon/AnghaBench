
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int SETTING_BRIGHTNESS ;
 int SETTING_COLOR ;
 int SETTING_CONTRAST ;
 int SETTING_GAMMA ;
 int SETTING_HUESHIFT ;
 int SETTING_OPACITY ;
 int SETTING_SATURATION ;
 int TEXT_BRIGHTNESS ;
 int TEXT_COLOR ;
 int TEXT_CONTRAST ;
 int TEXT_GAMMA ;
 int TEXT_HUESHIFT ;
 int TEXT_OPACITY ;
 int TEXT_SATURATION ;
 int UNUSED_PARAMETER (void*) ;
 int obs_properties_add_color (int *,int ,int ) ;
 int obs_properties_add_float_slider (int *,int ,int ,double,double,double) ;
 int obs_properties_add_int_slider (int *,int ,int ,int ,int,int) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *color_correction_filter_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_properties_add_float_slider(props, SETTING_GAMMA, TEXT_GAMMA, -3.0,
     3.0, 0.01);

 obs_properties_add_float_slider(props, SETTING_CONTRAST, TEXT_CONTRAST,
     -2.0, 2.0, 0.01);
 obs_properties_add_float_slider(props, SETTING_BRIGHTNESS,
     TEXT_BRIGHTNESS, -1.0, 1.0, 0.01);
 obs_properties_add_float_slider(props, SETTING_SATURATION,
     TEXT_SATURATION, -1.0, 5.0, 0.01);
 obs_properties_add_float_slider(props, SETTING_HUESHIFT, TEXT_HUESHIFT,
     -180.0, 180.0, 0.01);
 obs_properties_add_int_slider(props, SETTING_OPACITY, TEXT_OPACITY, 0,
          100, 1);

 obs_properties_add_color(props, SETTING_COLOR, TEXT_COLOR);

 UNUSED_PARAMETER(data);
 return props;
}
