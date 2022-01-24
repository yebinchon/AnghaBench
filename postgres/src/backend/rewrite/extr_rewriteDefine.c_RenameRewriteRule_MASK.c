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
struct TYPE_9__ {scalar_t__ ev_type; int /*<<< orphan*/  rulename; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_rewrite ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 scalar_t__ CMD_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  RULERELNAME ; 
 int /*<<< orphan*/  RangeVarCallbackForRenameRule ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RewriteRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC20(RangeVar *relation, const char *oldName,
				  const char *newName)
{
	Oid			relid;
	Relation	targetrel;
	Relation	pg_rewrite_desc;
	HeapTuple	ruletup;
	Form_pg_rewrite ruleform;
	Oid			ruleOid;
	ObjectAddress address;

	/*
	 * Look up name, check permissions, and acquire lock (which we will NOT
	 * release until end of transaction).
	 */
	relid = FUNC8(relation, AccessExclusiveLock,
									 0,
									 RangeVarCallbackForRenameRule,
									 NULL);

	/* Have lock already, so just need to build relcache entry. */
	targetrel = FUNC17(relid, NoLock);

	/* Prepare to modify pg_rewrite */
	pg_rewrite_desc = FUNC19(RewriteRelationId, RowExclusiveLock);

	/* Fetch the rule's entry (it had better exist) */
	ruletup = FUNC10(RULERELNAME,
								  FUNC6(relid),
								  FUNC7(oldName));
	if (!FUNC3(ruletup))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC13("rule \"%s\" for relation \"%s\" does not exist",
						oldName, FUNC9(targetrel))));
	ruleform = (Form_pg_rewrite) FUNC2(ruletup);
	ruleOid = ruleform->oid;

	/* rule with the new name should not already exist */
	if (FUNC4(relid, newName))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC13("rule \"%s\" for relation \"%s\" already exists",
						newName, FUNC9(targetrel))));

	/*
	 * We disallow renaming ON SELECT rules, because they should always be
	 * named "_RETURN".
	 */
	if (ruleform->ev_type == CMD_SELECT + '0')
		FUNC11(ERROR,
				(FUNC12(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC13("renaming an ON SELECT rule is not allowed")));

	/* OK, do the update */
	FUNC15(&(ruleform->rulename), newName);

	FUNC1(pg_rewrite_desc, &ruletup->t_self, ruletup);

	FUNC14(ruletup);
	FUNC18(pg_rewrite_desc, RowExclusiveLock);

	/*
	 * Invalidate relation's relcache entry so that other backends (and this
	 * one too!) are sent SI message to make them rebuild relcache entries.
	 * (Ideally this should happen automatically...)
	 */
	FUNC0(targetrel);

	FUNC5(address, RewriteRelationId, ruleOid);

	/*
	 * Close rel, but keep exclusive lock!
	 */
	FUNC16(targetrel, NoLock);

	return address;
}