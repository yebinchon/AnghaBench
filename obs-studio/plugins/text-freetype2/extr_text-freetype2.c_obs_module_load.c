
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (char*) ;
 int freetype2_source_info ;
 char* obs_module_config_path (int *) ;
 int obs_register_source (int *) ;
 int os_mkdirs (char*) ;

bool obs_module_load()
{
 char *config_dir = obs_module_config_path(((void*)0));
 if (config_dir) {
  os_mkdirs(config_dir);
  bfree(config_dir);
 }

 obs_register_source(&freetype2_source_info);

 return 1;
}
