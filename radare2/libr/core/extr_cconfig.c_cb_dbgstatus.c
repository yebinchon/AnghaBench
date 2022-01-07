
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_value; } ;
struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 scalar_t__ r_config_get_i (int ,char*) ;
 int r_config_set (int ,char*,char*) ;

__attribute__((used)) static bool cb_dbgstatus(void *user, void *data) {
 RCore *r = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (r_config_get_i (r->config, "cfg.debug")) {
  if (node->i_value) {
   r_config_set (r->config, "cmd.prompt",
    ".dr*; drd; sr PC;pi 1;s-");
  } else {
   r_config_set (r->config, "cmd.prompt", ".dr*");
  }
 }
 return 1;
}
