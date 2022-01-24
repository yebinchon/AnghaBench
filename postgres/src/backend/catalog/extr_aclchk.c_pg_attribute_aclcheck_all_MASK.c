#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {int relnatts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int AttrNumber ;
typedef  int /*<<< orphan*/  AclResult ;
typedef  scalar_t__ AclMode ;
typedef  scalar_t__ AclMaskHow ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NO_PRIV ; 
 int /*<<< orphan*/  ACLCHECK_OK ; 
 scalar_t__ ACLMASK_ALL ; 
 scalar_t__ ACLMASK_ANY ; 
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  Anum_pg_attribute_attacl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

AclResult
FUNC9(Oid table_oid, Oid roleid, AclMode mode,
						  AclMaskHow how)
{
	AclResult	result;
	HeapTuple	classTuple;
	Form_pg_class classForm;
	AttrNumber	nattrs;
	AttrNumber	curr_att;

	/*
	 * Must fetch pg_class row to check number of attributes.  As in
	 * pg_attribute_aclmask, we prefer to return "no privileges" instead of
	 * throwing an error if we get any unexpected lookup errors.
	 */
	classTuple = FUNC5(RELOID, FUNC3(table_oid));
	if (!FUNC1(classTuple))
		return ACLCHECK_NO_PRIV;
	classForm = (Form_pg_class) FUNC0(classTuple);

	nattrs = classForm->relnatts;

	FUNC4(classTuple);

	/*
	 * Initialize result in case there are no non-dropped columns.  We want to
	 * report failure in such cases for either value of 'how'.
	 */
	result = ACLCHECK_NO_PRIV;

	for (curr_att = 1; curr_att <= nattrs; curr_att++)
	{
		HeapTuple	attTuple;
		AclMode		attmask;

		attTuple = FUNC6(ATTNUM,
								   FUNC3(table_oid),
								   FUNC2(curr_att));
		if (!FUNC1(attTuple))
			continue;

		/* ignore dropped columns */
		if (((Form_pg_attribute) FUNC0(attTuple))->attisdropped)
		{
			FUNC4(attTuple);
			continue;
		}

		/*
		 * Here we hard-wire knowledge that the default ACL for a column
		 * grants no privileges, so that we can fall out quickly in the very
		 * common case where attacl is null.
		 */
		if (FUNC7(attTuple, Anum_pg_attribute_attacl, NULL))
			attmask = 0;
		else
			attmask = FUNC8(table_oid, curr_att, roleid,
										   mode, ACLMASK_ANY);

		FUNC4(attTuple);

		if (attmask != 0)
		{
			result = ACLCHECK_OK;
			if (how == ACLMASK_ANY)
				break;			/* succeed on any success */
		}
		else
		{
			result = ACLCHECK_NO_PRIV;
			if (how == ACLMASK_ALL)
				break;			/* fail on any failure */
		}
	}

	return result;
}