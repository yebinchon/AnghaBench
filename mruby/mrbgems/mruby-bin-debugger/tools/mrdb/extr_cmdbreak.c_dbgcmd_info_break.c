
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wcnt; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 int info_break_all (int *,TYPE_1__*) ;
 int info_break_select (int *,TYPE_1__*) ;

dbgcmd_state
dbgcmd_info_break(mrb_state *mrb, mrdb_state *mrdb)
{
  if (mrdb->wcnt == 2) {
    info_break_all(mrb, mrdb);
  }
  else {
    info_break_select(mrb, mrdb);
  }

  return DBGST_PROMPT;
}
