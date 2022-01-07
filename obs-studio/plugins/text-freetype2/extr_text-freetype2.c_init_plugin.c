
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Init_FreeType (int **) ;
 int LOG_WARNING ;
 int blog (int ,char*) ;
 int * ft2_lib ;
 int load_cached_os_font_list () ;
 int load_os_font_list () ;
 int plugin_initialized ;

__attribute__((used)) static void init_plugin(void)
{
 if (plugin_initialized)
  return;

 FT_Init_FreeType(&ft2_lib);

 if (ft2_lib == ((void*)0)) {
  blog(LOG_WARNING, "FT2-text: Failed to initialize FT2.");
  return;
 }

 if (!load_cached_os_font_list())
  load_os_font_list();

 plugin_initialized = 1;
}
