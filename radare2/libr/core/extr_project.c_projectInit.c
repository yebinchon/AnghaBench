
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int free (char*) ;
 int r_config_get (int ,char*) ;
 char* r_file_abspath (int ) ;
 int r_sys_mkdirp (char*) ;

__attribute__((used)) static int projectInit(RCore *core) {
 char *prjdir = r_file_abspath (r_config_get (core->config, "dir.projects"));
 int ret = r_sys_mkdirp (prjdir);
 if (!ret) {
  eprintf ("Cannot mkdir dir.projects\n");
 }
 free (prjdir);
 return ret;
}
