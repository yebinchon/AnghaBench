#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; int /*<<< orphan*/  precedence; int /*<<< orphan*/  operator; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  EVAL_VALUE ;
typedef  TYPE_1__ EVAL_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  EVAL_OPERATOR_NOP ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline EVAL_NODE *FUNC2(int count) {
    static int id = 1;

    EVAL_NODE *op = FUNC0(1, sizeof(EVAL_NODE) + (sizeof(EVAL_VALUE) * count));

    op->id = id++;
    op->operator = EVAL_OPERATOR_NOP;
    op->precedence = FUNC1(EVAL_OPERATOR_NOP);
    op->count = count;
    return op;
}