
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fixedarch; int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static bool set_tmp_arch(RCore *core, char *arch, char **tmparch) {
 if (!tmparch) {
  eprintf ("tmparch should be set\n");
 }
 *tmparch = strdup (r_config_get (core->config, "asm.arch"));
 r_config_set (core->config, "asm.arch", arch);
 core->fixedarch = 1;
 return 1;
}
