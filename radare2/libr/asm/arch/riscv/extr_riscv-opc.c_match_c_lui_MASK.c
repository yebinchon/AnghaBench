#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct riscv_opcode {int dummy; } ;
typedef  int insn_t ;

/* Variables and functions */
 int MASK_RD ; 
 int OP_SH_RD ; 
 scalar_t__ FUNC0 (struct riscv_opcode const*,int) ; 

__attribute__((used)) static int FUNC1(const struct riscv_opcode *op, insn_t insn)
{
  return FUNC0 (op, insn) && (((insn & MASK_RD) >> OP_SH_RD) != 2);
}