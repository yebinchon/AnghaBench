
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscv_opcode {int dummy; } ;
typedef int insn_t ;


 int MASK_CRS2 ;
 scalar_t__ match_rd_nonzero (struct riscv_opcode const*,int) ;

__attribute__((used)) static int match_c_add(const struct riscv_opcode *op, insn_t insn)
{
  return match_rd_nonzero (op, insn) && ((insn & MASK_CRS2) != 0);
}
