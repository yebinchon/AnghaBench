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
struct TYPE_3__ {int* buf; int capacity; scalar_t__ len; } ;
typedef  TYPE_1__ zend_worklist_stack ;
typedef  int /*<<< orphan*/  zend_arena ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static inline int FUNC2(zend_arena **arena, zend_worklist_stack *stack, int len)
{
	FUNC0(len >= 0);

	stack->buf = (int*)FUNC1(arena, sizeof(*stack->buf), len);
	stack->len = 0;
	stack->capacity = len;

	return SUCCESS;
}