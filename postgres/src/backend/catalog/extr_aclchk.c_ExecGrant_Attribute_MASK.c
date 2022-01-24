#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_15__ {int /*<<< orphan*/  attname; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_13__ {int /*<<< orphan*/  grantees; int /*<<< orphan*/  behavior; int /*<<< orphan*/  grant_option; int /*<<< orphan*/  is_grant; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ InternalGrant ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  AclMode ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ALL_RIGHTS_COLUMN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ATTNUM ; 
 int Anum_pg_attribute_attacl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  OBJECT_COLUMN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC26(InternalGrant *istmt, Oid relOid, const char *relname,
					AttrNumber attnum, Oid ownerId, AclMode col_privileges,
					Relation attRelation, const Acl *old_rel_acl)
{
	HeapTuple	attr_tuple;
	Form_pg_attribute pg_attribute_tuple;
	Acl		   *old_acl;
	Acl		   *new_acl;
	Acl		   *merged_acl;
	Datum		aclDatum;
	bool		isNull;
	Oid			grantorId;
	AclMode		avail_goptions;
	bool		need_update;
	HeapTuple	newtuple;
	Datum		values[Natts_pg_attribute];
	bool		nulls[Natts_pg_attribute];
	bool		replaces[Natts_pg_attribute];
	int			noldmembers;
	int			nnewmembers;
	Oid		   *oldmembers;
	Oid		   *newmembers;

	attr_tuple = FUNC13(ATTNUM,
								 FUNC9(relOid),
								 FUNC6(attnum));
	if (!FUNC5(attr_tuple))
		FUNC18(ERROR, "cache lookup failed for attribute %d of relation %u",
			 attnum, relOid);
	pg_attribute_tuple = (Form_pg_attribute) FUNC3(attr_tuple);

	/*
	 * Get working copy of existing ACL. If there's no ACL, substitute the
	 * proper default.
	 */
	aclDatum = FUNC14(ATTNUM, attr_tuple, Anum_pg_attribute_attacl,
							   &isNull);
	if (isNull)
	{
		old_acl = FUNC16(OBJECT_COLUMN, ownerId);
		/* There are no old member roles according to the catalogs */
		noldmembers = 0;
		oldmembers = NULL;
	}
	else
	{
		old_acl = FUNC2(aclDatum);
		/* Get the roles mentioned in the existing ACL */
		noldmembers = FUNC17(old_acl, &oldmembers);
	}

	/*
	 * In select_best_grantor we should consider existing table-level ACL bits
	 * as well as the per-column ACL.  Build a new ACL that is their
	 * concatenation.  (This is a bit cheap and dirty compared to merging them
	 * properly with no duplications, but it's all we need here.)
	 */
	merged_acl = FUNC15(old_rel_acl, old_acl);

	/* Determine ID to do the grant as, and available grant options */
	FUNC24(FUNC4(), col_privileges,
						merged_acl, ownerId,
						&grantorId, &avail_goptions);

	FUNC21(merged_acl);

	/*
	 * Restrict the privileges to what we can actually grant, and emit the
	 * standards-mandated warning and error messages.  Note: we don't track
	 * whether the user actually used the ALL PRIVILEGES(columns) syntax for
	 * each column; we just approximate it by whether all the possible
	 * privileges are specified now.  Since the all_privs flag only determines
	 * whether a warning is issued, this seems close enough.
	 */
	col_privileges =
		FUNC23(istmt->is_grant, avail_goptions,
								 (col_privileges == ACL_ALL_RIGHTS_COLUMN),
								 col_privileges,
								 relOid, grantorId, OBJECT_COLUMN,
								 relname, attnum,
								 FUNC8(pg_attribute_tuple->attname));

	/*
	 * Generate new ACL.
	 */
	new_acl = FUNC20(old_acl, istmt->is_grant,
								   istmt->grant_option,
								   istmt->behavior, istmt->grantees,
								   col_privileges, grantorId,
								   ownerId);

	/*
	 * We need the members of both old and new ACLs so we can correct the
	 * shared dependency information.
	 */
	nnewmembers = FUNC17(new_acl, &newmembers);

	/* finished building new ACL value, now insert it */
	FUNC7(values, 0, sizeof(values));
	FUNC7(nulls, false, sizeof(nulls));
	FUNC7(replaces, false, sizeof(replaces));

	/*
	 * If the updated ACL is empty, we can set attacl to null, and maybe even
	 * avoid an update of the pg_attribute row.  This is worth testing because
	 * we'll come through here multiple times for any relation-level REVOKE,
	 * even if there were never any column GRANTs.  Note we are assuming that
	 * the "default" ACL state for columns is empty.
	 */
	if (FUNC0(new_acl) > 0)
	{
		values[Anum_pg_attribute_attacl - 1] = FUNC10(new_acl);
		need_update = true;
	}
	else
	{
		nulls[Anum_pg_attribute_attacl - 1] = true;
		need_update = !isNull;
	}
	replaces[Anum_pg_attribute_attacl - 1] = true;

	if (need_update)
	{
		newtuple = FUNC19(attr_tuple, FUNC11(attRelation),
									 values, nulls, replaces);

		FUNC1(attRelation, &newtuple->t_self, newtuple);

		/* Update initial privileges for extensions */
		FUNC22(relOid, RelationRelationId, attnum,
								FUNC0(new_acl) > 0 ? new_acl : NULL);

		/* Update the shared dependency ACL info */
		FUNC25(RelationRelationId, relOid, attnum,
							  ownerId,
							  noldmembers, oldmembers,
							  nnewmembers, newmembers);
	}

	FUNC21(new_acl);

	FUNC12(attr_tuple);
}