
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int i_value; } ;
struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int esil_goto_limit; scalar_t__ esil; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int eprintf (char*) ;
 scalar_t__ r_sandbox_enable (int ) ;

__attribute__((used)) static bool cb_gotolimit(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode*) data;
 if (r_sandbox_enable (0)) {
  eprintf ("Cannot change gotolimit\n");
  return 0;
 }
 if (core->anal->esil) {
  core->anal->esil_goto_limit = node->i_value;
 }
 return 1;
}
