#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  uqword; int /*<<< orphan*/  udword; int /*<<< orphan*/  uword; int /*<<< orphan*/  sbyte; } ;
struct ud_operand {int size; TYPE_1__ lval; int /*<<< orphan*/  type; } ;
struct ud {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UD_OP_IMM ; 
 int /*<<< orphan*/  FUNC0 (struct ud*) ; 
 int /*<<< orphan*/  FUNC1 (struct ud*) ; 
 int /*<<< orphan*/  FUNC2 (struct ud*) ; 
 int /*<<< orphan*/  FUNC3 (struct ud*) ; 
 int FUNC4 (struct ud*,unsigned int) ; 

__attribute__((used)) static void 
FUNC5(struct ud* u, unsigned int size, struct ud_operand *op)
{
  op->size = FUNC4(u, size);
  op->type = UD_OP_IMM;

  switch (op->size) {
  case  8: op->lval.sbyte = FUNC3(u);   break;
  case 16: op->lval.uword = FUNC0(u);  break;
  case 32: op->lval.udword = FUNC1(u); break;
  case 64: op->lval.uqword = FUNC2(u); break;
  default: return;
  }
}