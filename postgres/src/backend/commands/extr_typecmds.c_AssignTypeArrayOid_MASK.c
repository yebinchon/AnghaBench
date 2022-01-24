#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_type_oid ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ IsBinaryUpgrade ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TypeOidIndexId ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  binary_upgrade_next_array_pg_type_oid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC7(void)
{
	Oid			type_array_oid;

	/* Use binary-upgrade override for pg_type.typarray? */
	if (IsBinaryUpgrade)
	{
		if (!FUNC1(binary_upgrade_next_array_pg_type_oid))
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC4("pg_type array OID value not set when in binary upgrade mode")));

		type_array_oid = binary_upgrade_next_array_pg_type_oid;
		binary_upgrade_next_array_pg_type_oid = InvalidOid;
	}
	else
	{
		Relation	pg_type = FUNC6(TypeRelationId, AccessShareLock);

		type_array_oid = FUNC0(pg_type, TypeOidIndexId,
											Anum_pg_type_oid);
		FUNC5(pg_type, AccessShareLock);
	}

	return type_array_oid;
}