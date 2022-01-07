
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* dbg; } ;
typedef TYPE_3__ mrdb_state ;
struct TYPE_10__ {TYPE_2__* c; } ;
typedef TYPE_4__ mrb_state ;
typedef int dbgcmd_state ;
struct TYPE_8__ {int ci; } ;
struct TYPE_7__ {int prvci; int xm; } ;


 int DBGST_CONTINUE ;
 int DBG_NEXT ;

dbgcmd_state
dbgcmd_next(mrb_state *mrb, mrdb_state *mrdb)
{
  mrdb->dbg->xm = DBG_NEXT;
  mrdb->dbg->prvci = mrb->c->ci;
  return DBGST_CONTINUE;
}
