
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cs_insn ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ reg; int imm; } ;
struct TYPE_4__ {int stackptr; int stackop; } ;
typedef TYPE_1__ RAnalOp ;


 TYPE_3__ INSOP (int) ;
 int R_ANAL_STACK_INC ;
 scalar_t__ X86_OP_IMM ;
 scalar_t__ X86_OP_REG ;
 scalar_t__ X86_REG_ESP ;
 scalar_t__ X86_REG_RSP ;

__attribute__((used)) static void op_stackidx(RAnalOp *op, cs_insn *insn, bool minus) {
 if (INSOP(0).type == X86_OP_REG && INSOP(1).type == X86_OP_IMM) {
  if (INSOP(0).reg == X86_REG_RSP || INSOP(0).reg == X86_REG_ESP) {
   op->stackop = R_ANAL_STACK_INC;
   if (minus) {
    op->stackptr = -INSOP(1).imm;
   } else {
    op->stackptr = INSOP(1).imm;
   }
  }
 }
}
