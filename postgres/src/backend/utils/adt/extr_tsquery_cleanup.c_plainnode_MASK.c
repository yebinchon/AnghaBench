#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {struct TYPE_15__* left; struct TYPE_15__* right; TYPE_2__* valnode; } ;
struct TYPE_14__ {size_t cur; size_t len; TYPE_4__* ptr; } ;
struct TYPE_12__ {int left; } ;
struct TYPE_13__ {TYPE_3__ qoperator; } ;
struct TYPE_10__ {scalar_t__ oper; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef  TYPE_4__ QueryItem ;
typedef  TYPE_5__ PLAINTREE ;
typedef  TYPE_6__ NODE ;

/* Variables and functions */
 scalar_t__ OP_NOT ; 
 scalar_t__ QI_VAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (void*,int) ; 

__attribute__((used)) static void
FUNC4(PLAINTREE *state, NODE *node)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC0();

	if (state->cur == state->len)
	{
		state->len *= 2;
		state->ptr = (QueryItem *) FUNC3((void *) state->ptr, state->len * sizeof(QueryItem));
	}
	FUNC1((void *) &(state->ptr[state->cur]), (void *) node->valnode, sizeof(QueryItem));
	if (node->valnode->type == QI_VAL)
		state->cur++;
	else if (node->valnode->qoperator.oper == OP_NOT)
	{
		state->ptr[state->cur].qoperator.left = 1;
		state->cur++;
		FUNC4(state, node->right);
	}
	else
	{
		int			cur = state->cur;

		state->cur++;
		FUNC4(state, node->right);
		state->ptr[cur].qoperator.left = state->cur - cur;
		FUNC4(state, node->left);
	}
	FUNC2(node);
}