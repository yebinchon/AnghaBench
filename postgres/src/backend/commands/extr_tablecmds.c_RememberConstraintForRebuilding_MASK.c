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
struct TYPE_3__ {int /*<<< orphan*/  changedConstraintDefs; int /*<<< orphan*/  changedConstraintOids; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ AlteredTableInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Oid conoid, AlteredTableInfo *tab)
{
	/*
	 * This de-duplication check is critical for two independent reasons: we
	 * mustn't try to recreate the same constraint twice, and if a constraint
	 * depends on more than one column whose type is to be altered, we must
	 * capture its definition string before applying any of the column type
	 * changes.  ruleutils.c will get confused if we ask again later.
	 */
	if (!FUNC2(tab->changedConstraintOids, conoid))
	{
		/* OK, capture the constraint's existing definition string */
		char	   *defstring = FUNC3(conoid);

		tab->changedConstraintOids = FUNC1(tab->changedConstraintOids,
												 conoid);
		tab->changedConstraintDefs = FUNC0(tab->changedConstraintDefs,
											 defstring);
	}
}