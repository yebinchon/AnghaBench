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
typedef  TYPE_1__ AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 

Relids
FUNC7(PlannerInfo *root, Relids relids,
							   Relids child_relids, Relids top_parent_relids)
{
	AppendRelInfo **appinfos;
	int			nappinfos;
	Relids		parent_relids = NULL;
	Relids		result;
	Relids		tmp_result = NULL;
	int			cnt;

	/*
	 * If the given relids set doesn't contain any of the top parent relids,
	 * it will remain unchanged.
	 */
	if (!FUNC4(relids, top_parent_relids))
		return relids;

	appinfos = FUNC5(root, child_relids, &nappinfos);

	/* Construct relids set for the immediate parent of the given child. */
	for (cnt = 0; cnt < nappinfos; cnt++)
	{
		AppendRelInfo *appinfo = appinfos[cnt];

		parent_relids = FUNC1(parent_relids, appinfo->parent_relid);
	}

	/* Recurse if immediate parent is not the top parent. */
	if (!FUNC2(parent_relids, top_parent_relids))
	{
		tmp_result = FUNC7(root, relids,
													parent_relids,
													top_parent_relids);
		relids = tmp_result;
	}

	result = FUNC0(relids, nappinfos, appinfos);

	/* Free memory consumed by any intermediate result. */
	if (tmp_result)
		FUNC3(tmp_result);
	FUNC3(parent_relids);
	FUNC6(appinfos);

	return result;
}