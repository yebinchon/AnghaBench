
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int bits; int syscall; } ;
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {TYPE_5__* anal; int config; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int R_SYS_OS ;
 int __setsegoff (int ,char*,int) ;
 int free (char*) ;
 int print_node_options (TYPE_2__*) ;
 int r_anal_set_os (TYPE_5__*,char*) ;
 char* r_config_get (int ,char*) ;
 int r_config_get_i (int ,char*) ;
 TYPE_2__* r_config_node_get (int ,char*) ;
 int r_core_anal_cc_init (TYPE_1__*) ;
 int r_syscall_setup (int ,char*,int ,char const*,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static bool cb_asmos(void *user, void *data) {
 RCore *core = (RCore*) user;
 int asmbits = r_config_get_i (core->config, "asm.bits");
 RConfigNode *asmarch, *node = (RConfigNode*) data;

 if (*node->value == '?') {
  print_node_options (node);
  return 0;
 }
 if (!node->value[0]) {
  free (node->value);
  node->value = strdup (R_SYS_OS);
 }
 asmarch = r_config_node_get (core->config, "asm.arch");
 if (asmarch) {
  const char *asmcpu = r_config_get (core->config, "asm.cpu");
  r_syscall_setup (core->anal->syscall, asmarch->value, core->anal->bits, asmcpu, node->value);
  __setsegoff (core->config, asmarch->value, asmbits);
 }
 r_anal_set_os (core->anal, node->value);
 r_core_anal_cc_init (core);
 return 1;
}
