
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R2_HOME_DATADIR ;
 int R_JOIN_2_PATHS (int ,char*) ;
 char* r_str_home (int ) ;

char *__get_panels_config_dir_path() {
 return r_str_home (R_JOIN_2_PATHS (R2_HOME_DATADIR, ".r2panels"));
}
