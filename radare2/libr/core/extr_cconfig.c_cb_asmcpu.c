
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* value; } ;
struct TYPE_6__ {int config; int assembler; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int r_asm_set_cpu (int ,char*) ;
 int r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char*) ;
 int rasm2_list (TYPE_1__*,int ,char) ;
 int update_asmcpu_options (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static bool cb_asmcpu(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 if (*node->value == '?') {
  update_asmcpu_options (core, node);

  rasm2_list (core, r_config_get (core->config, "asm.arch"), node->value[1]);
  return 0;
 }
 r_asm_set_cpu (core->assembler, node->value);
 r_config_set (core->config, "anal.cpu", node->value);
 return 1;
}
