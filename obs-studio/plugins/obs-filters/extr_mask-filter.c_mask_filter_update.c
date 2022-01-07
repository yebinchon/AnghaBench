
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mask_filter_data {char* image_file; int lock_aspect; int effect; int color; } ;
typedef int obs_data_t ;


 int SETTING_COLOR ;
 int SETTING_IMAGE_PATH ;
 int SETTING_OPACITY ;
 int SETTING_STRETCH ;
 int SETTING_TYPE ;
 int bfree (char*) ;
 char* bstrdup (char const*) ;
 int gs_effect_create_from_file (char*,int *) ;
 int gs_effect_destroy (int ) ;
 int mask_filter_image_load (struct mask_filter_data*) ;
 int obs_data_get_bool (int *,int ) ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 char* obs_module_file (char const*) ;
 int vec4_from_rgba (int *,int) ;

__attribute__((used)) static void mask_filter_update(void *data, obs_data_t *settings)
{
 struct mask_filter_data *filter = data;

 const char *path = obs_data_get_string(settings, SETTING_IMAGE_PATH);
 const char *effect_file = obs_data_get_string(settings, SETTING_TYPE);
 uint32_t color = (uint32_t)obs_data_get_int(settings, SETTING_COLOR);
 int opacity = (int)obs_data_get_int(settings, SETTING_OPACITY);
 char *effect_path;

 if (filter->image_file)
  bfree(filter->image_file);
 filter->image_file = bstrdup(path);

 color &= 0xFFFFFF;
 color |= (uint32_t)(((double)opacity) * 2.55) << 24;

 vec4_from_rgba(&filter->color, color);
 mask_filter_image_load(filter);
 filter->lock_aspect = !obs_data_get_bool(settings, SETTING_STRETCH);

 obs_enter_graphics();

 effect_path = obs_module_file(effect_file);
 gs_effect_destroy(filter->effect);
 filter->effect = gs_effect_create_from_file(effect_path, ((void*)0));
 bfree(effect_path);

 obs_leave_graphics();
}
