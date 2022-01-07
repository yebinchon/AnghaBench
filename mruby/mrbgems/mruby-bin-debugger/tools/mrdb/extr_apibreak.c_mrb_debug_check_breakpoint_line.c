
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int mrb_state ;
struct TYPE_7__ {scalar_t__ lineno; int file; } ;
typedef TYPE_2__ mrb_debug_linepoint ;
struct TYPE_8__ {scalar_t__ bpnum; TYPE_4__* bp; int pc; int irep; } ;
typedef TYPE_3__ mrb_debug_context ;
struct TYPE_6__ {TYPE_2__ linepoint; } ;
struct TYPE_9__ {int type; int bpno; TYPE_1__ point; int enable; } ;
typedef TYPE_4__ mrb_debug_breakpoint ;
typedef int int32_t ;





 int MRB_DEBUG_INVALID_ARGUMENT ;
 int MRB_DEBUG_OK ;
 int TRUE ;
 int check_start_pc_for_line (int *,int ,int ,scalar_t__) ;
 int strcmp (int ,char const*) ;

int32_t
mrb_debug_check_breakpoint_line(mrb_state *mrb, mrb_debug_context *dbg, const char *file, uint16_t line)
{
  mrb_debug_breakpoint *bp;
  mrb_debug_linepoint *line_p;
  uint32_t i;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0)) || (file == ((void*)0)) || (line <= 0)) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  if (!check_start_pc_for_line(mrb, dbg->irep, dbg->pc, line)) {
    return MRB_DEBUG_OK;
  }

  bp = dbg->bp;
  for(i=0; i<dbg->bpnum; i++) {
    switch (bp->type) {
      case 130:
        if (bp->enable == TRUE) {
          line_p = &bp->point.linepoint;
          if ((strcmp(line_p->file, file) == 0) && (line_p->lineno == line)) {
            return bp->bpno;
          }
        }
        break;
      case 129:
        break;
      case 128:
      default:
        return MRB_DEBUG_OK;
    }
    bp++;
  }
  return MRB_DEBUG_OK;
}
