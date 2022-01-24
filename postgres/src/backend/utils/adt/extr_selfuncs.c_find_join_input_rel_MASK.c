#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relids ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
#define  BMS_EMPTY_SET 130 
#define  BMS_MULTIPLE 129 
#define  BMS_SINGLETON 128 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RelOptInfo *
FUNC5(PlannerInfo *root, Relids relids)
{
	RelOptInfo *rel = NULL;

	switch (FUNC0(relids))
	{
		case BMS_EMPTY_SET:
			/* should not happen */
			break;
		case BMS_SINGLETON:
			rel = FUNC3(root, FUNC1(relids));
			break;
		case BMS_MULTIPLE:
			rel = FUNC4(root, relids);
			break;
	}

	if (rel == NULL)
		FUNC2(ERROR, "could not find RelOptInfo for given relids");

	return rel;
}