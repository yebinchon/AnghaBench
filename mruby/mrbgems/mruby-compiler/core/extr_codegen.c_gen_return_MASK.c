#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct mrb_insn_data {scalar_t__ insn; scalar_t__ a; scalar_t__ b; } ;
struct TYPE_6__ {int /*<<< orphan*/  lastpc; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 scalar_t__ OP_MOVE ; 
 scalar_t__ OP_RETURN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mrb_insn_data FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(codegen_scope *s, uint8_t op, uint16_t src)
{
  if (FUNC2(s)) {
    FUNC0(s, op, src);
  }
  else {
    struct mrb_insn_data data = FUNC1(s);

    if (data.insn == OP_MOVE && src == data.a) {
      s->pc = s->lastpc;
      FUNC0(s, op, data.b);
    }
    else if (data.insn != OP_RETURN) {
      FUNC0(s, op, src);
    }
  }
}