
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct mrb_insn_data {int insn; size_t a; size_t b; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
struct TYPE_17__ {TYPE_3__* c; } ;
typedef TYPE_4__ mrb_state ;
struct TYPE_18__ {scalar_t__* syms; } ;
typedef TYPE_5__ mrb_irep ;
struct TYPE_19__ {scalar_t__ isCfunc; scalar_t__ method_bpno; } ;
typedef TYPE_6__ mrb_debug_context ;
typedef int mrb_code ;
typedef scalar_t__ mrb_bool ;
typedef scalar_t__ int32_t ;
struct TYPE_16__ {TYPE_2__* ci; } ;
struct TYPE_15__ {scalar_t__ mid; TYPE_1__* target_class; } ;
struct TYPE_14__ {struct RClass* super; } ;


 scalar_t__ FALSE ;



 struct RClass* mrb_class (TYPE_4__*,int ) ;
 scalar_t__ mrb_debug_check_breakpoint_method (TYPE_4__*,TYPE_6__*,struct RClass*,scalar_t__,scalar_t__*) ;
 TYPE_6__* mrb_debug_context_get (TYPE_4__*) ;
 struct mrb_insn_data mrb_decode_insn (int const*) ;

__attribute__((used)) static int32_t
check_method_breakpoint(mrb_state *mrb, mrb_irep *irep, const mrb_code *pc, mrb_value *regs)
{
  struct RClass* c;
  mrb_sym sym;
  int32_t bpno;
  mrb_bool isCfunc;
  struct mrb_insn_data insn;

  mrb_debug_context *dbg = mrb_debug_context_get(mrb);

  isCfunc = FALSE;
  bpno = dbg->method_bpno;
  dbg->method_bpno = 0;

  insn = mrb_decode_insn(pc);
  switch(insn.insn) {
    case 130:
    case 129:
      c = mrb_class(mrb, regs[insn.a]);
      sym = irep->syms[insn.b];
      break;
    case 128:
      c = mrb->c->ci->target_class->super;
      sym = mrb->c->ci->mid;
      break;
    default:
      sym = 0;
      break;
  }
  if (sym != 0) {
    dbg->method_bpno = mrb_debug_check_breakpoint_method(mrb, dbg, c, sym, &isCfunc);
    if (isCfunc) {
      bpno = dbg->method_bpno;
      dbg->method_bpno = 0;
    }
  }
  dbg->isCfunc = isCfunc;
  return bpno;
}
