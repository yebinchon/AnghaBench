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
struct TYPE_9__ {scalar_t__ ev_class; int /*<<< orphan*/  oid; int /*<<< orphan*/  ev_enabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_rewrite ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  RULERELNAME ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RewriteRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC24(Relation rel, const char *rulename,
				  char fires_when)
{
	Relation	pg_rewrite_desc;
	Oid			owningRel = FUNC11(rel);
	Oid			eventRelationOid;
	HeapTuple	ruletup;
	Form_pg_rewrite ruleform;
	bool		changed = false;

	/*
	 * Find the rule tuple to change.
	 */
	pg_rewrite_desc = FUNC23(RewriteRelationId, RowExclusiveLock);
	ruletup = FUNC12(RULERELNAME,
								  FUNC9(owningRel),
								  FUNC10(rulename));
	if (!FUNC7(ruletup))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_UNDEFINED_OBJECT),
				 FUNC16("rule \"%s\" for relation \"%s\" does not exist",
						rulename, FUNC17(owningRel))));

	ruleform = (Form_pg_rewrite) FUNC5(ruletup);

	/*
	 * Verify that the user has appropriate permissions.
	 */
	eventRelationOid = ruleform->ev_class;
	FUNC0(eventRelationOid == owningRel);
	if (!FUNC21(eventRelationOid, FUNC6()))
		FUNC13(ACLCHECK_NOT_OWNER, FUNC19(FUNC18(eventRelationOid)),
					   FUNC17(eventRelationOid));

	/*
	 * Change ev_enabled if it is different from the desired new state.
	 */
	if (FUNC4(ruleform->ev_enabled) !=
		fires_when)
	{
		ruleform->ev_enabled = FUNC3(fires_when);
		FUNC2(pg_rewrite_desc, &ruletup->t_self, ruletup);

		changed = true;
	}

	FUNC8(RewriteRelationId, ruleform->oid, 0);

	FUNC20(ruletup);
	FUNC22(pg_rewrite_desc, RowExclusiveLock);

	/*
	 * If we changed anything, broadcast a SI inval message to force each
	 * backend (including our own!) to rebuild relation's relcache entry.
	 * Otherwise they will fail to apply the change promptly.
	 */
	if (changed)
		FUNC1(rel);
}