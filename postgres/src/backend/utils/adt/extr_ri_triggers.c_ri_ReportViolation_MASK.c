#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_16__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; } ;
struct TYPE_15__ {int* fk_attnums; int* pk_attnums; int nkeys; int /*<<< orphan*/  conname; } ;
struct TYPE_14__ {int /*<<< orphan*/ * rd_att; int /*<<< orphan*/  rd_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ RI_ConstraintInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_SELECT ; 
 int /*<<< orphan*/  ERRCODE_FOREIGN_KEY_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RI_PLAN_CHECK_LOOKUPPK ; 
 scalar_t__ RLS_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void
FUNC17(const RI_ConstraintInfo *riinfo,
				   Relation pk_rel, Relation fk_rel,
				   TupleTableSlot *violatorslot, TupleDesc tupdesc,
				   int queryno, bool partgone)
{
	StringInfoData key_names;
	StringInfoData key_values;
	bool		onfk;
	const int16 *attnums;
	Oid			rel_oid;
	AclResult	aclresult;
	bool		has_perm = true;

	/*
	 * Determine which relation to complain about.  If tupdesc wasn't passed
	 * by caller, assume the violator tuple came from there.
	 */
	onfk = (queryno == RI_PLAN_CHECK_LOOKUPPK);
	if (onfk)
	{
		attnums = riinfo->fk_attnums;
		rel_oid = fk_rel->rd_id;
		if (tupdesc == NULL)
			tupdesc = fk_rel->rd_att;
	}
	else
	{
		attnums = riinfo->pk_attnums;
		rel_oid = pk_rel->rd_id;
		if (tupdesc == NULL)
			tupdesc = pk_rel->rd_att;
	}

	/*
	 * Check permissions- if the user does not have access to view the data in
	 * any of the key columns then we don't include the errdetail() below.
	 *
	 * Check if RLS is enabled on the relation first.  If so, we don't return
	 * any specifics to avoid leaking data.
	 *
	 * Check table-level permissions next and, failing that, column-level
	 * privileges.
	 *
	 * When a partition at the referenced side is being detached/dropped, we
	 * needn't check, since the user must be the table owner anyway.
	 */
	if (partgone)
		has_perm = true;
	else if (FUNC6(rel_oid, InvalidOid, true) != RLS_ENABLED)
	{
		aclresult = FUNC15(rel_oid, FUNC0(), ACL_SELECT);
		if (aclresult != ACLCHECK_OK)
		{
			/* Try for column-level permissions */
			for (int idx = 0; idx < riinfo->nkeys; idx++)
			{
				aclresult = FUNC14(rel_oid, attnums[idx],
												  FUNC0(),
												  ACL_SELECT);

				/* No access to the key */
				if (aclresult != ACLCHECK_OK)
				{
					has_perm = false;
					break;
				}
			}
		}
	}
	else
		has_perm = false;

	if (has_perm)
	{
		/* Get printable versions of the keys involved */
		FUNC13(&key_names);
		FUNC13(&key_values);
		for (int idx = 0; idx < riinfo->nkeys; idx++)
		{
			int			fnum = attnums[idx];
			Form_pg_attribute att = FUNC4(tupdesc, fnum - 1);
			char	   *name,
					   *val;
			Datum		datum;
			bool		isnull;

			name = FUNC1(att->attname);

			datum = FUNC16(violatorslot, fnum, &isnull);
			if (!isnull)
			{
				Oid			foutoid;
				bool		typisvarlena;

				FUNC12(att->atttypid, &foutoid, &typisvarlena);
				val = FUNC2(foutoid, datum);
			}
			else
				val = "null";

			if (idx > 0)
			{
				FUNC5(&key_names, ", ");
				FUNC5(&key_values, ", ");
			}
			FUNC5(&key_names, name);
			FUNC5(&key_values, val);
		}
	}

	if (partgone)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_FOREIGN_KEY_VIOLATION),
				 FUNC10("removing partition \"%s\" violates foreign key constraint \"%s\"",
						FUNC3(pk_rel),
						FUNC1(riinfo->conname)),
				 FUNC9("Key (%s)=(%s) is still referenced from table \"%s\".",
						   key_names.data, key_values.data,
						   FUNC3(fk_rel))));
	else if (onfk)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_FOREIGN_KEY_VIOLATION),
				 FUNC10("insert or update on table \"%s\" violates foreign key constraint \"%s\"",
						FUNC3(fk_rel),
						FUNC1(riinfo->conname)),
				 has_perm ?
				 FUNC9("Key (%s)=(%s) is not present in table \"%s\".",
						   key_names.data, key_values.data,
						   FUNC3(pk_rel)) :
				 FUNC9("Key is not present in table \"%s\".",
						   FUNC3(pk_rel)),
				 FUNC11(fk_rel, FUNC1(riinfo->conname))));
	else
		FUNC7(ERROR,
				(FUNC8(ERRCODE_FOREIGN_KEY_VIOLATION),
				 FUNC10("update or delete on table \"%s\" violates foreign key constraint \"%s\" on table \"%s\"",
						FUNC3(pk_rel),
						FUNC1(riinfo->conname),
						FUNC3(fk_rel)),
				 has_perm ?
				 FUNC9("Key (%s)=(%s) is still referenced from table \"%s\".",
						   key_names.data, key_values.data,
						   FUNC3(fk_rel)) :
				 FUNC9("Key is still referenced from table \"%s\".",
						   FUNC3(fk_rel)),
				 FUNC11(fk_rel, FUNC1(riinfo->conname))));
}