
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct color_key_filter_data {float similarity; float smoothness; int key_color; } ;
typedef int obs_data_t ;
typedef scalar_t__ int64_t ;


 int SETTING_COLOR_TYPE ;
 int SETTING_KEY_COLOR ;
 int SETTING_SIMILARITY ;
 int SETTING_SMOOTHNESS ;
 scalar_t__ obs_data_get_int (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int vec4_from_rgba (int *,int) ;

__attribute__((used)) static inline void key_settings_update(struct color_key_filter_data *filter,
           obs_data_t *settings)
{
 int64_t similarity = obs_data_get_int(settings, SETTING_SIMILARITY);
 int64_t smoothness = obs_data_get_int(settings, SETTING_SMOOTHNESS);
 uint32_t key_color =
  (uint32_t)obs_data_get_int(settings, SETTING_KEY_COLOR);
 const char *key_type =
  obs_data_get_string(settings, SETTING_COLOR_TYPE);

 if (strcmp(key_type, "green") == 0)
  key_color = 0x00FF00;
 else if (strcmp(key_type, "blue") == 0)
  key_color = 0xFF0000;
 else if (strcmp(key_type, "red") == 0)
  key_color = 0x0000FF;
 else if (strcmp(key_type, "magenta") == 0)
  key_color = 0xFF00FF;

 vec4_from_rgba(&filter->key_color, key_color | 0xFF000000);

 filter->similarity = (float)similarity / 1000.0f;
 filter->smoothness = (float)smoothness / 1000.0f;
}
