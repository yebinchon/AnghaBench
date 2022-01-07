
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_8__ {int size; } ;
typedef TYPE_2__ cs_insn ;
struct TYPE_7__ {int disp; int scale; int index; int base; int segment; } ;
struct TYPE_10__ {int type; int imm; TYPE_1__ mem; int size; } ;
struct TYPE_9__ {int ptr; int disp; int stackptr; int val; int stackop; int type; int refptr; int cycles; } ;
typedef TYPE_3__ RAnalOp ;


 int CYCLE_MEM ;
 TYPE_6__ INSOP (int) ;
 int R_ANAL_OP_TYPE_REG ;
 int R_ANAL_STACK_SET ;
 void* UT64_MAX ;
 int X86_OP_IMM ;


 int X86_REG_EBP ;
 int X86_REG_INVALID ;
 int X86_REG_RBP ;
 int X86_REG_RIP ;

__attribute__((used)) static void op0_memimmhandle(RAnalOp *op, cs_insn *insn, ut64 addr, int regsz) {
 op->ptr = UT64_MAX;
 switch (INSOP(0).type) {
 case 129:
  op->cycles = CYCLE_MEM;
  op->disp = INSOP(0).mem.disp;
  if (!op->disp) {
   op->disp = UT64_MAX;
  }
  op->refptr = INSOP(0).size;
  if (INSOP(0).mem.base == X86_REG_RIP) {
   op->ptr = addr + insn->size + op->disp;
  } else if (INSOP(0).mem.base == X86_REG_RBP || INSOP(0).mem.base == X86_REG_EBP) {
   op->type |= R_ANAL_OP_TYPE_REG;
   op->stackop = R_ANAL_STACK_SET;
   op->stackptr = regsz;
  } else if (INSOP(0).mem.segment == X86_REG_INVALID && INSOP(0).mem.base == X86_REG_INVALID
      && INSOP(0).mem.index == X86_REG_INVALID && INSOP(0).mem.scale == 1) {
   op->ptr = op->disp;
   if (op->ptr < 0x1000) {
    op->ptr = UT64_MAX;
   }
  }
  if (INSOP(1).type == X86_OP_IMM) {
   op->val = INSOP(1).imm;
  }
  break;
 case 128:
  if (INSOP(1).type == X86_OP_IMM) {

   op->val = INSOP(1).imm;
  }
  break;
 default:
  break;
 }
}
