
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* value; } ;
struct TYPE_6__ {int config; int anal; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int eprintf (char*,char*) ;
 int print_node_options (TYPE_2__*) ;
 scalar_t__ r_anal_use (int ,char*) ;
 char* r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int update_analarch_options (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static bool cb_analarch(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (*node->value == '?') {
  update_analarch_options (core, node);
  print_node_options (node);
  return 0;
 }
 if (*node->value) {
  if (r_anal_use (core->anal, node->value)) {
   return 1;
  }
  const char *aa = r_config_get (core->config, "asm.arch");
  if (!aa || strcmp (aa, node->value)) {
   eprintf ("anal.arch: cannot find '%s'\n", node->value);
  } else {
   r_config_set (core->config, "anal.arch", "null");
   return 1;
  }
 }
 return 0;
}
