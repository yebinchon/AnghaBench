#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int /*<<< orphan*/  variable; int /*<<< orphan*/  expression; } ;
typedef  TYPE_1__ EVAL_VALUE ;

/* Variables and functions */
#define  EVAL_VALUE_EXPRESSION 129 
#define  EVAL_VALUE_VARIABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(EVAL_VALUE *v) {
    switch(v->type) {
        case EVAL_VALUE_EXPRESSION:
            FUNC0(v->expression);
            break;

        case EVAL_VALUE_VARIABLE:
            FUNC1(v->variable);
            break;

        default:
            break;
    }
}