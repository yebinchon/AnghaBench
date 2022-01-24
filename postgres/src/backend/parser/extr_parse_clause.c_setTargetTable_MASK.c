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
struct TYPE_16__ {int /*<<< orphan*/  p_rtable; TYPE_2__* p_target_rangetblentry; int /*<<< orphan*/ * p_target_relation; } ;
struct TYPE_15__ {int /*<<< orphan*/  requiredPerms; } ;
struct TYPE_14__ {int /*<<< orphan*/  alias; int /*<<< orphan*/  relname; int /*<<< orphan*/ * schemaname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  TYPE_3__ ParseState ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int,int,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC11(ParseState *pstate, RangeVar *relation,
			   bool inh, bool alsoSource, AclMode requiredPerms)
{
	RangeTblEntry *rte;
	int			rtindex;

	/*
	 * ENRs hide tables of the same name, so we need to check for them first.
	 * In contrast, CTEs don't hide tables (for this purpose).
	 */
	if (relation->schemaname == NULL &&
		FUNC9(pstate, relation->relname))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC5("relation \"%s\" cannot be the target of a modifying statement",
						relation->relname)));

	/* Close old target; this could only happen for multi-action rules */
	if (pstate->p_target_relation != NULL)
		FUNC10(pstate->p_target_relation, NoLock);

	/*
	 * Open target rel and grab suitable lock (which we will hold till end of
	 * transaction).
	 *
	 * free_parsestate() will eventually do the corresponding table_close(),
	 * but *not* release the lock.
	 */
	pstate->p_target_relation = FUNC7(pstate, relation,
												RowExclusiveLock);

	/*
	 * Now build an RTE.
	 */
	rte = FUNC2(pstate, pstate->p_target_relation,
										RowExclusiveLock,
										relation->alias, inh, false);
	pstate->p_target_rangetblentry = rte;

	/* assume new rte is at end */
	rtindex = FUNC6(pstate->p_rtable);
	FUNC0(rte == FUNC8(rtindex, pstate->p_rtable));

	/*
	 * Override addRangeTableEntry's default ACL_SELECT permissions check, and
	 * instead mark target table as requiring exactly the specified
	 * permissions.
	 *
	 * If we find an explicit reference to the rel later during parse
	 * analysis, we will add the ACL_SELECT bit back again; see
	 * markVarForSelectPriv and its callers.
	 */
	rte->requiredPerms = requiredPerms;

	/*
	 * If UPDATE/DELETE, add table to joinlist and namespace.
	 *
	 * Note: some callers know that they can find the new ParseNamespaceItem
	 * at the end of the pstate->p_namespace list.  This is a bit ugly but not
	 * worth complicating this function's signature for.
	 */
	if (alsoSource)
		FUNC1(pstate, rte, true, true, true);

	return rtindex;
}