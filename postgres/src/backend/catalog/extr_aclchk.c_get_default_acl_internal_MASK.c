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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_default_acl_defaclacl ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  DEFACLROLENSPOBJ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static Acl *
FUNC7(Oid roleId, Oid nsp_oid, char objtype)
{
	Acl		   *result = NULL;
	HeapTuple	tuple;

	tuple = FUNC5(DEFACLROLENSPOBJ,
							FUNC3(roleId),
							FUNC3(nsp_oid),
							FUNC0(objtype));

	if (FUNC2(tuple))
	{
		Datum		aclDatum;
		bool		isNull;

		aclDatum = FUNC6(DEFACLROLENSPOBJ, tuple,
								   Anum_pg_default_acl_defaclacl,
								   &isNull);
		if (!isNull)
			result = FUNC1(aclDatum);
		FUNC4(tuple);
	}

	return result;
}