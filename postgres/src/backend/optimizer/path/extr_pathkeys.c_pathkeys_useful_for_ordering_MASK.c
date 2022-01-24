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
struct TYPE_3__ {int /*<<< orphan*/ * query_pathkeys; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(PlannerInfo *root, List *pathkeys)
{
	if (root->query_pathkeys == NIL)
		return 0;				/* no special ordering requested */

	if (pathkeys == NIL)
		return 0;				/* unordered path */

	if (FUNC1(root->query_pathkeys, pathkeys))
	{
		/* It's useful ... or at least the first N keys are */
		return FUNC0(root->query_pathkeys);
	}

	return 0;					/* path ordering not useful */
}