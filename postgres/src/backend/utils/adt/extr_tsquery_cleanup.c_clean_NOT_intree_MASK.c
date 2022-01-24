#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* left; struct TYPE_10__* right; TYPE_2__* valnode; } ;
struct TYPE_8__ {scalar_t__ oper; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef  TYPE_3__ NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OP_AND ; 
 scalar_t__ OP_NOT ; 
 scalar_t__ OP_OR ; 
 scalar_t__ OP_PHRASE ; 
 scalar_t__ QI_VAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static NODE *
FUNC4(NODE *node)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC1();

	if (node->valnode->type == QI_VAL)
		return node;

	if (node->valnode->qoperator.oper == OP_NOT)
	{
		FUNC2(node);
		return NULL;
	}

	/* operator & or | */
	if (node->valnode->qoperator.oper == OP_OR)
	{
		if ((node->left = FUNC4(node->left)) == NULL ||
			(node->right = FUNC4(node->right)) == NULL)
		{
			FUNC2(node);
			return NULL;
		}
	}
	else
	{
		NODE	   *res = node;

		FUNC0(node->valnode->qoperator.oper == OP_AND ||
			   node->valnode->qoperator.oper == OP_PHRASE);

		node->left = FUNC4(node->left);
		node->right = FUNC4(node->right);
		if (node->left == NULL && node->right == NULL)
		{
			FUNC3(node);
			res = NULL;
		}
		else if (node->left == NULL)
		{
			res = node->right;
			FUNC3(node);
		}
		else if (node->right == NULL)
		{
			res = node->left;
			FUNC3(node);
		}
		return res;
	}
	return node;
}