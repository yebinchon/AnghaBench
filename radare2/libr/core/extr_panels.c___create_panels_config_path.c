
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_FREE (char*) ;
 int R_JOIN_2_PATHS (char*,char*) ;
 char* __get_panels_config_dir_path () ;
 char* r_str_newf (int ,char*,char const*) ;
 int r_sys_mkdirp (char*) ;

char *__create_panels_config_path(const char *file) {
 char *dir_path = __get_panels_config_dir_path ();
 r_sys_mkdirp (dir_path);
 char *file_path = r_str_newf (R_JOIN_2_PATHS ("%s", "%s"), dir_path, file);
 R_FREE (dir_path);
 return file_path;
}
