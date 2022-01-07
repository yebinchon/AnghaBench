
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
typedef int mrb_state ;
typedef int dbgcmd_state ;
struct TYPE_4__ {int xm; } ;


 int DBGST_CONTINUE ;
 int DBG_STEP ;

dbgcmd_state
dbgcmd_step(mrb_state *mrb, mrdb_state *mrdb)
{
  mrdb->dbg->xm = DBG_STEP;
  return DBGST_CONTINUE;
}
