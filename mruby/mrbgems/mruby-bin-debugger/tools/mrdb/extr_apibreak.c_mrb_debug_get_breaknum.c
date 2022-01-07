
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int bpnum; } ;
typedef TYPE_1__ mrb_debug_context ;
typedef int int32_t ;


 int MRB_DEBUG_INVALID_ARGUMENT ;

int32_t
mrb_debug_get_breaknum(mrb_state *mrb, mrb_debug_context *dbg)
{
  if ((mrb == ((void*)0)) || (dbg == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  return dbg->bpnum;
}
