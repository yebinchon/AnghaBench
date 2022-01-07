
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ size; } ;
typedef TYPE_2__ cs_insn ;
struct TYPE_7__ {scalar_t__ disp; int scale; int index; int base; int segment; } ;
struct TYPE_10__ {int type; int size; int imm; int reg; TYPE_1__ mem; } ;
struct TYPE_9__ {int refptr; scalar_t__ ptr; scalar_t__ disp; int stackptr; int stackop; } ;
typedef TYPE_3__ RAnalOp ;


 TYPE_6__ INSOP (int) ;
 int R_ANAL_STACK_GET ;
 scalar_t__ UT64_MAX ;


 int X86_REG_EBP ;
 int X86_REG_ESP ;
 int X86_REG_INVALID ;
 int X86_REG_RBP ;
 int X86_REG_RIP ;
 int X86_REG_RSP ;

__attribute__((used)) static void op1_memimmhandle(RAnalOp *op, cs_insn *insn, ut64 addr, int regsz) {
 if (op->refptr < 1 || op->ptr == UT64_MAX) {
  switch (INSOP(1).type) {
  case 128:
   op->disp = INSOP(1).mem.disp;
   op->refptr = INSOP(1).size;
   if (INSOP(1).mem.base == X86_REG_RIP) {
    op->ptr = addr + insn->size + op->disp;
   } else if (INSOP(1).mem.base == X86_REG_RBP || INSOP(1).mem.base == X86_REG_EBP) {
    op->stackop = R_ANAL_STACK_GET;
    op->stackptr = regsz;
   } else if (INSOP(1).mem.segment == X86_REG_INVALID && INSOP(1).mem.base == X86_REG_INVALID
              && INSOP(1).mem.index == X86_REG_INVALID && INSOP(1).mem.scale == 1) {
    op->ptr = op->disp;
   }
   break;
  case 129:
   if ((INSOP (1).imm > 10) &&
    (INSOP(0).reg != X86_REG_RSP) && (INSOP(0).reg != X86_REG_ESP)) {
    op->ptr = INSOP (1).imm;
   }
   break;
  default:
   break;
  }
 }
}
