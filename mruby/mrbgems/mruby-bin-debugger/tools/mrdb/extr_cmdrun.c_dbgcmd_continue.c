
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int wcnt; int * words; TYPE_2__* dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_5__ {scalar_t__ xphase; int xm; int ccnt; } ;
typedef TYPE_2__ mrb_debug_context ;
typedef int dbgcmd_state ;


 int DBGST_CONTINUE ;
 scalar_t__ DBG_PHASE_AFTER_RUN ;
 int DBG_QUIT ;
 int DBG_RUN ;
 int puts (char*) ;
 int sscanf (int ,char*,int*) ;

dbgcmd_state
dbgcmd_continue(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_debug_context *dbg = mrdb->dbg;
  int ccnt = 1;

  if (mrdb->wcnt > 1){
    sscanf(mrdb->words[1], "%d", &ccnt);
  }
  dbg->ccnt = (uint16_t)(ccnt > 0 ? ccnt : 1);

  if (dbg->xphase == DBG_PHASE_AFTER_RUN){
    puts("The program is not running.");
    dbg->xm = DBG_QUIT;
  }
  else {
    dbg->xm = DBG_RUN;
  }
  return DBGST_CONTINUE;
}
