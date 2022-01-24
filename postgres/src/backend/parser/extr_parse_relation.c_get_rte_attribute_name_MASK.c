#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rtekind; TYPE_1__* eref; int /*<<< orphan*/  relid; TYPE_2__* alias; } ;
struct TYPE_6__ {int /*<<< orphan*/  colnames; } ;
struct TYPE_5__ {int /*<<< orphan*/  aliasname; int /*<<< orphan*/  colnames; } ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

char *
FUNC5(RangeTblEntry *rte, AttrNumber attnum)
{
	if (attnum == InvalidAttrNumber)
		return "*";

	/*
	 * If there is a user-written column alias, use it.
	 */
	if (rte->alias &&
		attnum > 0 && attnum <= FUNC2(rte->alias->colnames))
		return FUNC4(FUNC3(rte->alias->colnames, attnum - 1));

	/*
	 * If the RTE is a relation, go to the system catalogs not the
	 * eref->colnames list.  This is a little slower but it will give the
	 * right answer if the column has been renamed since the eref list was
	 * built (which can easily happen for rules).
	 */
	if (rte->rtekind == RTE_RELATION)
		return FUNC1(rte->relid, attnum, false);

	/*
	 * Otherwise use the column name from eref.  There should always be one.
	 */
	if (attnum > 0 && attnum <= FUNC2(rte->eref->colnames))
		return FUNC4(FUNC3(rte->eref->colnames, attnum - 1));

	/* else caller gave us a bogus attnum */
	FUNC0(ERROR, "invalid attnum %d for rangetable entry %s",
		 attnum, rte->eref->aliasname);
	return NULL;				/* keep compiler quiet */
}