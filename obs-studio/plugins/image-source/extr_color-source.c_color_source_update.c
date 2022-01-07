
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct color_source {void* height; void* width; void* color; } ;
typedef int obs_data_t ;


 int obs_data_get_int (int *,char*) ;

__attribute__((used)) static void color_source_update(void *data, obs_data_t *settings)
{
 struct color_source *context = data;
 uint32_t color = (uint32_t)obs_data_get_int(settings, "color");
 uint32_t width = (uint32_t)obs_data_get_int(settings, "width");
 uint32_t height = (uint32_t)obs_data_get_int(settings, "height");

 context->color = color;
 context->width = width;
 context->height = height;
}
