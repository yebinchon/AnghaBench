#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char operator; } ;
typedef  TYPE_1__ EVAL_NODE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char const**,int*) ; 

__attribute__((used)) static inline EVAL_NODE *FUNC3(const char **string, unsigned char operator_type, int *error) {
    EVAL_NODE *sub = FUNC2(string, error);
    if(!sub) return NULL;

    EVAL_NODE *op = FUNC0(1);
    op->operator = operator_type;
    FUNC1(op, 0, sub);
    return op;
}