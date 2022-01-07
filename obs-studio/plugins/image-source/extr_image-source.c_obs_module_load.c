
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int color_source_info ;
 int image_source_info ;
 int obs_register_source (int *) ;
 int slideshow_info ;

bool obs_module_load(void)
{
 obs_register_source(&image_source_info);
 obs_register_source(&color_source_info);
 obs_register_source(&slideshow_info);
 return 1;
}
