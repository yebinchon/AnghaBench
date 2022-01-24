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
struct ud {int vex_op; int vex_b2; int vex_b1; } ;

/* Variables and functions */
 int /*<<< orphan*/  REGCLASS_XMM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ud*,struct ud_operand*,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct ud *u, struct ud_operand *opr, unsigned size)
{
  uint8_t vvvv;
  FUNC0(u->vex_op != 0);
  vvvv = ((u->vex_op == 0xc4 ? u->vex_b2 : u->vex_b1) >> 3) & 0xf;
  FUNC1(u, opr, REGCLASS_XMM, (0xf & ~vvvv), size);
}