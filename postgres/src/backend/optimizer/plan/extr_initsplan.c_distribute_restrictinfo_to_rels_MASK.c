#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  baserestrict_min_security; int /*<<< orphan*/  baserestrictinfo; } ;
struct TYPE_8__ {int /*<<< orphan*/  security_level; int /*<<< orphan*/  required_relids; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
#define  BMS_MULTIPLE 129 
#define  BMS_SINGLETON 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC8(PlannerInfo *root,
								RestrictInfo *restrictinfo)
{
	Relids		relids = restrictinfo->required_relids;
	RelOptInfo *rel;

	switch (FUNC2(relids))
	{
		case BMS_SINGLETON:

			/*
			 * There is only one relation participating in the clause, so it
			 * is a restriction clause for that relation.
			 */
			rel = FUNC6(root, FUNC3(relids));

			/* Add clause to rel's restriction list */
			rel->baserestrictinfo = FUNC7(rel->baserestrictinfo,
											restrictinfo);
			/* Update security level info */
			rel->baserestrict_min_security = FUNC0(rel->baserestrict_min_security,
												 restrictinfo->security_level);
			break;
		case BMS_MULTIPLE:

			/*
			 * The clause is a join clause, since there is more than one rel
			 * in its relid set.
			 */

			/*
			 * Check for hashjoinable operators.  (We don't bother setting the
			 * hashjoin info except in true join clauses.)
			 */
			FUNC4(restrictinfo);

			/*
			 * Add clause to the join lists of all the relevant relations.
			 */
			FUNC1(root, restrictinfo, relids);
			break;
		default:

			/*
			 * clause references no rels, and therefore we have no place to
			 * attach it.  Shouldn't get here if callers are working properly.
			 */
			FUNC5(ERROR, "cannot cope with variable-free clause");
			break;
	}
}