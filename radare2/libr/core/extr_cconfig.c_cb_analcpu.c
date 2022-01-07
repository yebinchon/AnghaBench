
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int config; int anal; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int R_ANAL_ARCHINFO_ALIGN ;
 int r_anal_archinfo (int ,int ) ;
 int r_anal_set_cpu (int ,int ) ;
 int r_config_set_i (int ,char*,int) ;

__attribute__((used)) static bool cb_analcpu(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 r_anal_set_cpu (core->anal, node->value);

 {
  int v = r_anal_archinfo (core->anal, R_ANAL_ARCHINFO_ALIGN);
  r_config_set_i (core->config, "asm.pcalign", (v != -1)? v: 0);
 }
 return 1;
}
