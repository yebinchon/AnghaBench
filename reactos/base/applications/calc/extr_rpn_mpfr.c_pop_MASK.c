#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_node_t ;
struct TYPE_5__ {int /*<<< orphan*/  mf; } ;
struct TYPE_7__ {TYPE_1__ number; } ;
struct TYPE_6__ {TYPE_3__ node; void* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* stack ; 
 int /*<<< orphan*/  temp ; 

__attribute__((used)) static calc_node_t *FUNC3(void)
{
    void *next;

    if (stack == NULL)
        return NULL;

    /* copy the node */
    FUNC2(&temp, &stack->node);
    next = stack->next;

    /* free the node */
    FUNC1(stack->node.number.mf);
    FUNC0(stack);
    stack = next;

    return &temp;
}