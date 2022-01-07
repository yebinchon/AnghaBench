
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct color_key_filter_data {float contrast; float brightness; float gamma; int color; } ;
typedef int obs_data_t ;


 int SETTING_BRIGHTNESS ;
 int SETTING_CONTRAST ;
 int SETTING_GAMMA ;
 int SETTING_OPACITY ;
 double obs_data_get_double (int *,int ) ;
 int obs_data_get_int (int *,int ) ;
 int vec4_from_rgba (int *,int) ;

__attribute__((used)) static inline void color_settings_update(struct color_key_filter_data *filter,
      obs_data_t *settings)
{
 uint32_t opacity =
  (uint32_t)obs_data_get_int(settings, SETTING_OPACITY);
 uint32_t color = 0xFFFFFF | (((opacity * 255) / 100) << 24);
 double contrast = obs_data_get_double(settings, SETTING_CONTRAST);
 double brightness = obs_data_get_double(settings, SETTING_BRIGHTNESS);
 double gamma = obs_data_get_double(settings, SETTING_GAMMA);

 contrast = (contrast < 0.0) ? (1.0 / (-contrast + 1.0))
        : (contrast + 1.0);

 brightness *= 0.5;

 gamma = (gamma < 0.0) ? (-gamma + 1.0) : (1.0 / (gamma + 1.0));

 filter->contrast = (float)contrast;
 filter->brightness = (float)brightness;
 filter->gamma = (float)gamma;

 vec4_from_rgba(&filter->color, color);
}
