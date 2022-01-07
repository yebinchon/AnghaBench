
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fade_to_color_info {float switch_point; int color; } ;
typedef int obs_data_t ;


 int S_COLOR ;
 int S_SWITCH_POINT ;
 int obs_data_get_int (int *,int ) ;
 int vec4_from_rgba (int *,int) ;

__attribute__((used)) static void fade_to_color_update(void *data, obs_data_t *settings)
{
 struct fade_to_color_info *fade_to_color = data;
 uint32_t color = (uint32_t)obs_data_get_int(settings, S_COLOR);
 uint32_t swp = (uint32_t)obs_data_get_int(settings, S_SWITCH_POINT);

 color |= 0xFF000000;

 vec4_from_rgba(&fade_to_color->color, color);

 fade_to_color->switch_point = (float)swp / 100.0f;
}
