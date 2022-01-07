
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mrb_state ;
struct TYPE_4__ {int bpnum; int * bp; } ;
typedef TYPE_1__ mrb_debug_context ;
typedef int mrb_debug_breakpoint ;
typedef size_t int32_t ;


 size_t MRB_DEBUG_BREAK_INVALID_NO ;
 size_t MRB_DEBUG_INVALID_ARGUMENT ;
 size_t MRB_DEBUG_OK ;
 int free_breakpoint (int *,int *) ;
 size_t get_break_index (TYPE_1__*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

int32_t
mrb_debug_delete_break(mrb_state *mrb, mrb_debug_context *dbg, uint32_t bpno)
{
  uint32_t i;
  int32_t index;

  if ((mrb == ((void*)0)) ||(dbg == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  index = get_break_index(dbg, bpno);
  if (index == MRB_DEBUG_BREAK_INVALID_NO) {
    return MRB_DEBUG_BREAK_INVALID_NO;
  }

  free_breakpoint(mrb, &dbg->bp[index]);

  for(i = index ; i < dbg->bpnum; i++) {
    if ((i + 1) == dbg->bpnum) {
      memset(&dbg->bp[i], 0, sizeof(mrb_debug_breakpoint));
    }
    else {
      memcpy(&dbg->bp[i], &dbg->bp[i + 1], sizeof(mrb_debug_breakpoint));
    }
  }

  dbg->bpnum--;

  return MRB_DEBUG_OK;
}
