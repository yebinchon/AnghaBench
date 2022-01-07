
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscv_opcode {int dummy; } ;
typedef int insn_t ;


 int MASK_RS1 ;
 int MASK_RS2 ;
 int OP_SH_RS1 ;
 int OP_SH_RS2 ;
 scalar_t__ match_opcode (struct riscv_opcode const*,int) ;

__attribute__((used)) static int match_rs1_eq_rs2(const struct riscv_opcode *op, insn_t insn)
{
  int rs1 = (insn & MASK_RS1) >> OP_SH_RS1;
  int rs2 = (insn & MASK_RS2) >> OP_SH_RS2;
  return match_opcode (op, insn) && rs1 == rs2;
}
