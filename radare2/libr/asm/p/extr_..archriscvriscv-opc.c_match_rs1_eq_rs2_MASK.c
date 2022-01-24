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
 int MASK_RS1 ; 
 int MASK_RS2 ; 
 int OP_SH_RS1 ; 
 int OP_SH_RS2 ; 
 scalar_t__ FUNC0 (struct riscv_opcode const*,int) ; 

__attribute__((used)) static int FUNC1(const struct riscv_opcode *op, insn_t insn)
{
  int rs1 = (insn & MASK_RS1) >> OP_SH_RS1;
  int rs2 = (insn & MASK_RS2) >> OP_SH_RS2;
  return FUNC0 (op, insn) && rs1 == rs2;
}