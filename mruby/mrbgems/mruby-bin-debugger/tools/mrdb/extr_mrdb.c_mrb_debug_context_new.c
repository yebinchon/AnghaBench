
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {int next_bpno; int xphase; int xm; } ;
typedef TYPE_1__ mrb_debug_context ;


 int DBG_INIT ;
 int DBG_PHASE_BEFORE_RUN ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static mrb_debug_context*
mrb_debug_context_new(mrb_state *mrb)
{
  mrb_debug_context *dbg = (mrb_debug_context*)mrb_malloc(mrb, sizeof(mrb_debug_context));

  memset(dbg, 0, sizeof(mrb_debug_context));

  dbg->xm = DBG_INIT;
  dbg->xphase = DBG_PHASE_BEFORE_RUN;
  dbg->next_bpno = 1;

  return dbg;
}
