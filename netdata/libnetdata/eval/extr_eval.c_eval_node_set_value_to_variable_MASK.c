#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct TYPE_6__ {int count; TYPE_1__* ops; } ;
struct TYPE_5__ {TYPE_4__* variable; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  EVAL_VARIABLE ;
typedef  TYPE_2__ EVAL_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  EVAL_VALUE_VARIABLE ; 
 TYPE_4__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static inline void FUNC4(EVAL_NODE *op, int pos, const char *variable) {
    if(pos >= op->count)
        FUNC1("Invalid request to set position %d of OPERAND that has only %d values", pos + 1, op->count + 1);

    op->ops[pos].type = EVAL_VALUE_VARIABLE;
    op->ops[pos].variable = FUNC0(1, sizeof(EVAL_VARIABLE));
    op->ops[pos].variable->name = FUNC3(variable);
    op->ops[pos].variable->hash = FUNC2(op->ops[pos].variable->name);
}