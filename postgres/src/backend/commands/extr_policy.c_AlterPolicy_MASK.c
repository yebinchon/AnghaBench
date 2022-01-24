#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  isnull ;
struct TYPE_31__ {int /*<<< orphan*/ * qual; int /*<<< orphan*/ * with_check; int /*<<< orphan*/  policy_name; int /*<<< orphan*/  table; int /*<<< orphan*/ * roles; } ;
struct TYPE_30__ {void* oid; } ;
struct TYPE_29__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_28__ {scalar_t__ objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
struct TYPE_27__ {int /*<<< orphan*/ * p_rtable; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ ParseState ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_policy ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_5__ AlterPolicyStmt ;

/* Variables and functions */
 char ACL_DELETE_CHR ; 
 scalar_t__ ACL_ID_PUBLIC ; 
 char ACL_INSERT_CHR ; 
 char ACL_SELECT_CHR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int Anum_pg_policy_polcmd ; 
 int /*<<< orphan*/  Anum_pg_policy_polname ; 
 int Anum_pg_policy_polqual ; 
 int /*<<< orphan*/  Anum_pg_policy_polrelid ; 
 int Anum_pg_policy_polroles ; 
 int Anum_pg_policy_polwithcheck ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 char FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXPR_KIND_POLICY ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int Natts_pg_policy ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OIDOID ; 
 int FUNC13 (void*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PolicyPolrelidPolnameIndexId ; 
 int /*<<< orphan*/  PolicyRelationId ; 
 int /*<<< orphan*/  RangeVarCallbackForPolicy ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SHARED_DEPENDENCY_POLICY ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int*,int,int /*<<< orphan*/ ,int,int,char) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*) ; 
 int FUNC32 (TYPE_3__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC33 (TYPE_3__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 TYPE_1__* FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int) ; 
 int* FUNC38 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC44 (char*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC47 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC50 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

ObjectAddress
FUNC51(AlterPolicyStmt *stmt)
{
	Relation	pg_policy_rel;
	Oid			policy_id;
	Relation	target_table;
	Oid			table_id;
	Datum	   *role_oids = NULL;
	int			nitems = 0;
	ArrayType  *role_ids = NULL;
	List	   *qual_parse_rtable = NIL;
	List	   *with_check_parse_rtable = NIL;
	Node	   *qual = NULL;
	Node	   *with_check_qual = NULL;
	ScanKeyData skey[2];
	SysScanDesc sscan;
	HeapTuple	policy_tuple;
	HeapTuple	new_tuple;
	Datum		values[Natts_pg_policy];
	bool		isnull[Natts_pg_policy];
	bool		replaces[Natts_pg_policy];
	ObjectAddress target;
	ObjectAddress myself;
	Datum		polcmd_datum;
	char		polcmd;
	bool		polcmd_isnull;
	int			i;

	/* Parse role_ids */
	if (stmt->roles != NULL)
	{
		role_oids = FUNC38(stmt->roles, &nitems);
		role_ids = FUNC23(role_oids, nitems, OIDOID,
								   sizeof(Oid), true, 'i');
	}

	/* Get id of table.  Also handles permissions checks. */
	table_id = FUNC15(stmt->table, AccessExclusiveLock,
										0,
										RangeVarCallbackForPolicy,
										(void *) stmt);

	target_table = FUNC43(table_id, NoLock);

	/* Parse the using policy clause */
	if (stmt->qual)
	{
		RangeTblEntry *rte;
		ParseState *qual_pstate = FUNC34(NULL);

		rte = FUNC21(qual_pstate, target_table,
											AccessShareLock,
											NULL, false, false);

		FUNC20(qual_pstate, rte, false, true, true);

		qual = FUNC50(qual_pstate, FUNC24(stmt->qual),
									EXPR_KIND_POLICY,
									"POLICY");

		/* Fix up collation information */
		FUNC22(qual_pstate, qual);

		qual_parse_rtable = qual_pstate->p_rtable;
		FUNC30(qual_pstate);
	}

	/* Parse the with-check policy clause */
	if (stmt->with_check)
	{
		RangeTblEntry *rte;
		ParseState *with_check_pstate = FUNC34(NULL);

		rte = FUNC21(with_check_pstate, target_table,
											AccessShareLock,
											NULL, false, false);

		FUNC20(with_check_pstate, rte, false, true, true);

		with_check_qual = FUNC50(with_check_pstate,
											   FUNC24(stmt->with_check),
											   EXPR_KIND_POLICY,
											   "POLICY");

		/* Fix up collation information */
		FUNC22(with_check_pstate, with_check_qual);

		with_check_parse_rtable = with_check_pstate->p_rtable;
		FUNC30(with_check_pstate);
	}

	/* zero-clear */
	FUNC35(values, 0, sizeof(values));
	FUNC35(replaces, 0, sizeof(replaces));
	FUNC35(isnull, 0, sizeof(isnull));

	/* Find policy to update. */
	pg_policy_rel = FUNC49(PolicyRelationId, RowExclusiveLock);

	/* Set key - policy's relation id. */
	FUNC18(&skey[0],
				Anum_pg_policy_polrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC13(table_id));

	/* Set key - policy's name. */
	FUNC18(&skey[1],
				Anum_pg_policy_polname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC3(stmt->policy_name));

	sscan = FUNC45(pg_policy_rel,
							   PolicyPolrelidPolnameIndexId, true, NULL, 2,
							   skey);

	policy_tuple = FUNC47(sscan);

	/* Check that the policy is found, raise an error if not. */
	if (!FUNC11(policy_tuple))
		FUNC27(ERROR,
				(FUNC28(ERRCODE_UNDEFINED_OBJECT),
				 FUNC29("policy \"%s\" for table \"%s\" does not exist",
						stmt->policy_name,
						FUNC17(target_table))));

	/* Get policy command */
	polcmd_datum = FUNC32(policy_tuple, Anum_pg_policy_polcmd,
								FUNC16(pg_policy_rel),
								&polcmd_isnull);
	FUNC2(!polcmd_isnull);
	polcmd = FUNC8(polcmd_datum);

	/*
	 * If the command is SELECT or DELETE then WITH CHECK should be NULL.
	 */
	if ((polcmd == ACL_SELECT_CHR || polcmd == ACL_DELETE_CHR)
		&& stmt->with_check != NULL)
		FUNC27(ERROR,
				(FUNC28(ERRCODE_SYNTAX_ERROR),
				 FUNC29("only USING expression allowed for SELECT, DELETE")));

	/*
	 * If the command is INSERT then WITH CHECK should be the only expression
	 * provided.
	 */
	if ((polcmd == ACL_INSERT_CHR)
		&& stmt->qual != NULL)
		FUNC27(ERROR,
				(FUNC28(ERRCODE_SYNTAX_ERROR),
				 FUNC29("only WITH CHECK expression allowed for INSERT")));

	policy_id = ((Form_pg_policy) FUNC10(policy_tuple))->oid;

	if (role_ids != NULL)
	{
		replaces[Anum_pg_policy_polroles - 1] = true;
		values[Anum_pg_policy_polroles - 1] = FUNC14(role_ids);
	}
	else
	{
		Oid		   *roles;
		Datum		roles_datum;
		bool		attr_isnull;
		ArrayType  *policy_roles;

		/*
		 * We need to pull the set of roles this policy applies to from what's
		 * in the catalog, so that we can recreate the dependencies correctly
		 * for the policy.
		 */

		roles_datum = FUNC32(policy_tuple, Anum_pg_policy_polroles,
								   FUNC16(pg_policy_rel),
								   &attr_isnull);
		FUNC2(!attr_isnull);

		policy_roles = FUNC7(roles_datum);

		roles = (Oid *) FUNC0(policy_roles);

		nitems = FUNC1(policy_roles)[0];

		role_oids = (Datum *) FUNC37(nitems * sizeof(Datum));

		for (i = 0; i < nitems; i++)
			role_oids[i] = FUNC13(roles[i]);
	}

	if (qual != NULL)
	{
		replaces[Anum_pg_policy_polqual - 1] = true;
		values[Anum_pg_policy_polqual - 1]
			= FUNC4(FUNC36(qual));
	}
	else
	{
		Datum		value_datum;
		bool		attr_isnull;

		/*
		 * We need to pull the USING expression and build the range table for
		 * the policy from what's in the catalog, so that we can recreate the
		 * dependencies correctly for the policy.
		 */

		/* Check if the policy has a USING expr */
		value_datum = FUNC32(policy_tuple, Anum_pg_policy_polqual,
								   FUNC16(pg_policy_rel),
								   &attr_isnull);
		if (!attr_isnull)
		{
			char	   *qual_value;
			ParseState *qual_pstate;

			/* parsestate is built just to build the range table */
			qual_pstate = FUNC34(NULL);

			qual_value = FUNC19(value_datum);
			qual = FUNC44(qual_value);

			/* Add this rel to the parsestate's rangetable, for dependencies */
			FUNC21(qual_pstate, target_table,
										  AccessShareLock,
										  NULL, false, false);

			qual_parse_rtable = qual_pstate->p_rtable;
			FUNC30(qual_pstate);
		}
	}

	if (with_check_qual != NULL)
	{
		replaces[Anum_pg_policy_polwithcheck - 1] = true;
		values[Anum_pg_policy_polwithcheck - 1]
			= FUNC4(FUNC36(with_check_qual));
	}
	else
	{
		Datum		value_datum;
		bool		attr_isnull;

		/*
		 * We need to pull the WITH CHECK expression and build the range table
		 * for the policy from what's in the catalog, so that we can recreate
		 * the dependencies correctly for the policy.
		 */

		/* Check if the policy has a WITH CHECK expr */
		value_datum = FUNC32(policy_tuple, Anum_pg_policy_polwithcheck,
								   FUNC16(pg_policy_rel),
								   &attr_isnull);
		if (!attr_isnull)
		{
			char	   *with_check_value;
			ParseState *with_check_pstate;

			/* parsestate is built just to build the range table */
			with_check_pstate = FUNC34(NULL);

			with_check_value = FUNC19(value_datum);
			with_check_qual = FUNC44(with_check_value);

			/* Add this rel to the parsestate's rangetable, for dependencies */
			FUNC21(with_check_pstate, target_table,
										  AccessShareLock,
										  NULL, false, false);

			with_check_parse_rtable = with_check_pstate->p_rtable;
			FUNC30(with_check_pstate);
		}
	}

	new_tuple = FUNC33(policy_tuple,
								  FUNC16(pg_policy_rel),
								  values, isnull, replaces);
	FUNC6(pg_policy_rel, &new_tuple->t_self, new_tuple);

	/* Update Dependencies. */
	FUNC25(PolicyRelationId, policy_id, false);

	/* Record Dependencies */
	target.classId = RelationRelationId;
	target.objectId = table_id;
	target.objectSubId = 0;

	myself.classId = PolicyRelationId;
	myself.objectId = policy_id;
	myself.objectSubId = 0;

	FUNC39(&myself, &target, DEPENDENCY_AUTO);

	FUNC40(&myself, qual, qual_parse_rtable, DEPENDENCY_NORMAL);

	FUNC40(&myself, with_check_qual, with_check_parse_rtable,
						   DEPENDENCY_NORMAL);

	/* Register role dependencies */
	FUNC26(PolicyRelationId, policy_id, 0);
	target.classId = AuthIdRelationId;
	target.objectSubId = 0;
	for (i = 0; i < nitems; i++)
	{
		target.objectId = FUNC9(role_oids[i]);
		/* no dependency if public */
		if (target.objectId != ACL_ID_PUBLIC)
			FUNC41(&myself, &target,
									 SHARED_DEPENDENCY_POLICY);
	}

	FUNC12(PolicyRelationId, policy_id, 0);

	FUNC31(new_tuple);

	/* Invalidate Relation Cache */
	FUNC5(target_table);

	/* Clean up. */
	FUNC46(sscan);
	FUNC42(target_table, NoLock);
	FUNC48(pg_policy_rel, RowExclusiveLock);

	return myself;
}