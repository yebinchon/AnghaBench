
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; int config; } ;
struct TYPE_4__ {int * esil; int reg; } ;
typedef TYPE_2__ RCore ;
typedef int RConfigHold ;


 int R_REG_NAME_BP ;
 int R_REG_NAME_SP ;
 int eprintf (char*) ;
 int r_config_hold_i (int *,char*,char*,char*,char*,char*,int *) ;
 int r_config_set (int ,char*,char*) ;
 int r_config_set_i (int ,char*,int) ;
 char* r_reg_get_name (int ,int ) ;
 int r_reg_getv (int ,char const*) ;

__attribute__((used)) static bool r_anal_emul_init(RCore *core, RConfigHold *hc) {
 r_config_hold_i (hc, "esil.romem", "asm.trace", "dbg.trace",
   "esil.nonull", "dbg.follow", ((void*)0));
 r_config_set (core->config, "esil.romem", "true");
 r_config_set (core->config, "asm.trace", "true");
 r_config_set (core->config, "dbg.trace", "true");
 r_config_set (core->config, "esil.nonull", "true");
 r_config_set_i (core->config, "dbg.follow", 0);
 const char *bp = r_reg_get_name (core->anal->reg, R_REG_NAME_BP);
 const char *sp = r_reg_get_name (core->anal->reg, R_REG_NAME_SP);
 if ((bp && !r_reg_getv (core->anal->reg, bp)) && (sp && !r_reg_getv (core->anal->reg, sp))) {
  eprintf ("Stack isn't initialized.\n");
  eprintf ("Try running aei and aeim commands before aft for default stack initialization\n");
  return 0;
 }
 return (core->anal->esil != ((void*)0));
}
