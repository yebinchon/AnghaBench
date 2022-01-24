#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ attisdropped; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;
typedef  scalar_t__ AclResult ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ATTNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(Oid tableoid, AttrNumber attnum,
					   Oid roleid, AclMode mode)
{
	AclResult	aclresult;
	HeapTuple	attTuple;
	Form_pg_attribute attributeForm;

	/*
	 * If convert_column_name failed, we can just return -1 immediately.
	 */
	if (attnum == InvalidAttrNumber)
		return -1;

	/*
	 * First check if we have the privilege at the table level.  We check
	 * existence of the pg_class row before risking calling pg_class_aclcheck.
	 * Note: it might seem there's a race condition against concurrent DROP,
	 * but really it's safe because there will be no syscache flush between
	 * here and there.  So if we see the row in the syscache, so will
	 * pg_class_aclcheck.
	 */
	if (!FUNC6(RELOID, FUNC3(tableoid)))
		return -1;

	aclresult = FUNC8(tableoid, roleid, mode);

	if (aclresult == ACLCHECK_OK)
		return true;

	/*
	 * No table privilege, so try per-column privileges.  Again, we have to
	 * check for dropped attribute first, and we rely on the syscache not to
	 * notice a concurrent drop before pg_attribute_aclcheck fetches the row.
	 */
	attTuple = FUNC5(ATTNUM,
							   FUNC3(tableoid),
							   FUNC2(attnum));
	if (!FUNC1(attTuple))
		return -1;
	attributeForm = (Form_pg_attribute) FUNC0(attTuple);
	if (attributeForm->attisdropped)
	{
		FUNC4(attTuple);
		return -1;
	}
	FUNC4(attTuple);

	aclresult = FUNC7(tableoid, attnum, roleid, mode);

	return (aclresult == ACLCHECK_OK);
}