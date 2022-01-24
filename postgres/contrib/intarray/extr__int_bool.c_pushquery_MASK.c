#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* int32 ;
struct TYPE_4__ {int /*<<< orphan*/  num; TYPE_2__* str; } ;
typedef  TYPE_1__ WORKSTATE ;
struct TYPE_5__ {struct TYPE_5__* next; void* val; void* type; } ;
typedef  TYPE_2__ NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(WORKSTATE *state, int32 type, int32 val)
{
	NODE	   *tmp = (NODE *) FUNC0(sizeof(NODE));

	tmp->type = type;
	tmp->val = val;
	tmp->next = state->str;
	state->str = tmp;
	state->num++;
}