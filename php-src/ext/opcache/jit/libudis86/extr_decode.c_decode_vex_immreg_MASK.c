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
typedef  int uint8_t ;
struct ud_operand {int dummy; } ;
struct ud {int dis_mode; scalar_t__ vex_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  REGCLASS_XMM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ud*) ; 
 int /*<<< orphan*/  FUNC2 (struct ud*,struct ud_operand*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC3 (struct ud*) ; 

__attribute__((used)) static int
FUNC4(struct ud *u, struct ud_operand *opr, unsigned size)
{
  uint8_t imm  = FUNC3(u);
  uint8_t mask = u->dis_mode == 64 ? 0xf : 0x7;
  FUNC1(u);
  FUNC0(u->vex_op != 0);
  FUNC2(u, opr, REGCLASS_XMM, mask & (imm >> 4), size);
  return 0;
}