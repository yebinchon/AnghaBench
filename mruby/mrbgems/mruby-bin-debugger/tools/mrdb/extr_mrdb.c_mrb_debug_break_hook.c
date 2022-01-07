
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrdb_state ;
typedef int mrdb_exemode ;
typedef int mrb_state ;
struct TYPE_6__ {int xm; } ;
typedef TYPE_1__ mrb_debug_context ;
struct TYPE_7__ {scalar_t__ (* func ) (int *,int *) ;} ;
typedef TYPE_2__ debug_command ;
typedef scalar_t__ dbgcmd_state ;


 scalar_t__ DBGST_CONTINUE ;
 scalar_t__ DBGST_RESTART ;
 TYPE_2__* get_and_parse_command (int *,int *) ;
 int mrb_assert (TYPE_2__*) ;
 int * mrdb_state_get (int *) ;
 int print_info_stopped (int *,int *) ;
 scalar_t__ stub1 (int *,int *) ;

__attribute__((used)) static mrdb_exemode
mrb_debug_break_hook(mrb_state *mrb, mrb_debug_context *dbg)
{
  debug_command *cmd;
  dbgcmd_state st = DBGST_CONTINUE;
  mrdb_state *mrdb = mrdb_state_get(mrb);

  print_info_stopped(mrb, mrdb);

  while (1) {
    cmd = get_and_parse_command(mrb, mrdb);
    mrb_assert(cmd);

    st = cmd->func(mrb, mrdb);

    if ((st == DBGST_CONTINUE) || (st == DBGST_RESTART)) break;
  }
  return dbg->xm;
}
