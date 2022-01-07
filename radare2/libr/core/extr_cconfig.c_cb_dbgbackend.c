
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int dbg; int config; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int r_config_set (int ,char*,char*) ;
 int r_debug_plugin_list (int ,char) ;
 int r_debug_use (int ,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool cb_dbgbackend(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (!strcmp (node->value, "?")) {
  r_debug_plugin_list (core->dbg, 'q');
  return 0;
 }
 if (!strcmp (node->value, "bf")) {

  r_config_set (core->config, "asm.arch", "bf");
 }
 r_debug_use (core->dbg, node->value);
 return 1;
}
