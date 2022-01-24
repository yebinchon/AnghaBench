#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent_relid; } ;
typedef  int /*<<< orphan*/ * Relids ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  TYPE_1__ AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 

Node *
FUNC7(PlannerInfo *root, Node *node,
								  Relids child_relids,
								  Relids top_parent_relids)
{
	AppendRelInfo **appinfos;
	Bitmapset  *parent_relids = NULL;
	int			nappinfos;
	int			cnt;

	FUNC0(FUNC4(child_relids) == FUNC4(top_parent_relids));

	appinfos = FUNC5(root, child_relids, &nappinfos);

	/* Construct relids set for the immediate parent of given child. */
	for (cnt = 0; cnt < nappinfos; cnt++)
	{
		AppendRelInfo *appinfo = appinfos[cnt];

		parent_relids = FUNC2(parent_relids, appinfo->parent_relid);
	}

	/* Recurse if immediate parent is not the top parent. */
	if (!FUNC3(parent_relids, top_parent_relids))
		node = FUNC7(root, node, parent_relids,
												 top_parent_relids);

	/* Now translate for this child */
	node = FUNC1(root, node, nappinfos, appinfos);

	FUNC6(appinfos);

	return node;
}