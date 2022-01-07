
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {int config; TYPE_1__* anal; int num; int assembler; } ;
struct TYPE_5__ {int reg; } ;
typedef TYPE_2__ RCore ;


 scalar_t__ UT64_MAX ;
 scalar_t__ __isMips (int ) ;
 int r_config_set (int ,char*,char*) ;
 int r_config_set_i (int ,char*,scalar_t__) ;
 int r_core_cmd0 (TYPE_2__*,char*) ;
 scalar_t__ r_num_math (int ,char*) ;
 scalar_t__ r_reg_getv (int ,char*) ;

__attribute__((used)) static void loadGP(RCore *core) {
 if (__isMips (core->assembler)) {
  ut64 gp = r_num_math (core->num, "loc._gp");
  if (!gp || gp == UT64_MAX) {
   r_config_set (core->config, "anal.roregs", "zero");
   r_core_cmd0 (core, "10aes@entry0");
   r_config_set (core->config, "anal.roregs", "zero,gp");
   gp = r_reg_getv (core->anal->reg, "gp");
  }

  r_config_set_i (core->config, "anal.gp", gp);
 }
}
