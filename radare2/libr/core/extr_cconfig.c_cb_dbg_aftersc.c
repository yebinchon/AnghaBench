
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pid; int trace_aftersyscall; } ;
struct TYPE_7__ {int i_value; } ;
struct TYPE_6__ {TYPE_4__* dbg; TYPE_1__* io; } ;
struct TYPE_5__ {scalar_t__ debug; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int r_debug_attach (TYPE_4__*,int ) ;

__attribute__((used)) static bool cb_dbg_aftersc(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 core->dbg->trace_aftersyscall = node->i_value;
 if (core->io->debug) {
  r_debug_attach (core->dbg, core->dbg->pid);
 }
 return 1;
}
