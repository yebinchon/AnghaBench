
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscv_opcode {int dummy; } ;
typedef int insn_t ;



__attribute__((used)) static int match_never(const struct riscv_opcode *op, insn_t insn)
{
  return 0;
}
