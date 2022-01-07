
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Done_FreeType (int ) ;
 int free_os_font_list () ;
 int ft2_lib ;
 scalar_t__ plugin_initialized ;

void obs_module_unload(void)
{
 if (plugin_initialized) {
  free_os_font_list();
  FT_Done_FreeType(ft2_lib);
 }
}
