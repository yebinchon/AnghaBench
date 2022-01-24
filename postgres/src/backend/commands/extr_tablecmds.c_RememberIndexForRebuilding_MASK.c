#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  changedIndexDefs; int /*<<< orphan*/  changedIndexOids; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ AlteredTableInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(Oid indoid, AlteredTableInfo *tab)
{
	/*
	 * This de-duplication check is critical for two independent reasons: we
	 * mustn't try to recreate the same index twice, and if an index depends
	 * on more than one column whose type is to be altered, we must capture
	 * its definition string before applying any of the column type changes.
	 * ruleutils.c will get confused if we ask again later.
	 */
	if (!FUNC5(tab->changedIndexOids, indoid))
	{
		/*
		 * Before adding it as an index-to-rebuild, we'd better see if it
		 * belongs to a constraint, and if so rebuild the constraint instead.
		 * Typically this check fails, because constraint indexes normally
		 * have only dependencies on their constraint.  But it's possible for
		 * such an index to also have direct dependencies on table columns,
		 * for example with a partial exclusion constraint.
		 */
		Oid			conoid = FUNC2(indoid);

		if (FUNC0(conoid))
		{
			FUNC1(conoid, tab);
		}
		else
		{
			/* OK, capture the index's existing definition string */
			char	   *defstring = FUNC6(indoid);

			tab->changedIndexOids = FUNC4(tab->changedIndexOids,
												indoid);
			tab->changedIndexDefs = FUNC3(tab->changedIndexDefs,
											defstring);
		}
	}
}