
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int mrb_state ;
struct TYPE_3__ {scalar_t__ bpnum; int bp; } ;
typedef TYPE_1__ mrb_debug_context ;
typedef int mrb_debug_breakpoint ;
typedef scalar_t__ int32_t ;


 scalar_t__ MRB_DEBUG_INVALID_ARGUMENT ;
 int memcpy (int *,int ,int) ;

int32_t
mrb_debug_get_break_all(mrb_state *mrb, mrb_debug_context *dbg, uint32_t size, mrb_debug_breakpoint *bp)
{
  uint32_t get_size = 0;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0)) || (bp == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  if (dbg->bpnum >= size) {
    get_size = size;
  }
  else {
    get_size = dbg->bpnum;
  }

  memcpy(bp, dbg->bp, sizeof(mrb_debug_breakpoint) * get_size);

  return get_size;
}
