#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int flags; int nchild; struct TYPE_16__** child; TYPE_2__* valnode; } ;
struct TYPE_14__ {scalar_t__ oper; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef  TYPE_3__ QTNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ OP_NOT ; 
 scalar_t__ QI_OPR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int QTN_NOCHANGE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (TYPE_3__*,TYPE_3__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static QTNode *
FUNC5(QTNode *root, QTNode *ex, QTNode *subs, bool *isfind)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC2();

	/* also, since it's a bit expensive, let's check for query cancel. */
	FUNC0();

	/* match at the node itself */
	root = FUNC3(root, ex, subs, isfind);

	/* unless we matched here, consider matches at child nodes */
	if (root && (root->flags & QTN_NOCHANGE) == 0 &&
		root->valnode->type == QI_OPR)
	{
		int			i,
					j = 0;

		/*
		 * Any subtrees that are replaced by NULL must be dropped from the
		 * tree.
		 */
		for (i = 0; i < root->nchild; i++)
		{
			root->child[j] = FUNC5(root->child[i], ex, subs, isfind);
			if (root->child[j])
				j++;
		}

		root->nchild = j;

		/*
		 * If we have just zero or one remaining child node, simplify out this
		 * operator node.
		 */
		if (root->nchild == 0)
		{
			FUNC1(root);
			root = NULL;
		}
		else if (root->nchild == 1 && root->valnode->qoperator.oper != OP_NOT)
		{
			QTNode	   *nroot = root->child[0];

			FUNC4(root);
			root = nroot;
		}
	}

	return root;
}