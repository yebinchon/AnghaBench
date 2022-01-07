
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mrb_state ;
struct TYPE_8__ {TYPE_1__* bp; } ;
typedef TYPE_2__ mrb_debug_context ;
struct TYPE_9__ {int type; int point; int enable; int bpno; } ;
typedef TYPE_3__ mrb_debug_breakpoint ;
typedef size_t int32_t ;
struct TYPE_7__ {int type; int point; int enable; int bpno; } ;


 size_t MRB_DEBUG_BREAK_INVALID_NO ;
 size_t MRB_DEBUG_INVALID_ARGUMENT ;
 size_t get_break_index (TYPE_2__*,int ) ;

int32_t
mrb_debug_get_break(mrb_state *mrb, mrb_debug_context *dbg, uint32_t bpno, mrb_debug_breakpoint *bp)
{
  int32_t index;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0)) || (bp == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  index = get_break_index(dbg, bpno);
  if (index == MRB_DEBUG_BREAK_INVALID_NO) {
    return MRB_DEBUG_BREAK_INVALID_NO;
  }

  bp->bpno = dbg->bp[index].bpno;
  bp->enable = dbg->bp[index].enable;
  bp->point = dbg->bp[index].point;
  bp->type = dbg->bp[index].type;

  return 0;
}
