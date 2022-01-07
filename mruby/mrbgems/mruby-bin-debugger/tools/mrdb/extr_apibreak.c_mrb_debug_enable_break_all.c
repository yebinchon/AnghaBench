
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int mrb_state ;
struct TYPE_5__ {size_t bpnum; TYPE_1__* bp; } ;
typedef TYPE_2__ mrb_debug_context ;
typedef int int32_t ;
struct TYPE_4__ {int enable; } ;


 int MRB_DEBUG_INVALID_ARGUMENT ;
 int MRB_DEBUG_OK ;
 int TRUE ;

int32_t
mrb_debug_enable_break_all(mrb_state *mrb, mrb_debug_context *dbg)
{
  uint32_t i;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  for(i = 0 ; i < dbg->bpnum; i++) {
    dbg->bp[i].enable = TRUE;
  }

  return MRB_DEBUG_OK;
}
