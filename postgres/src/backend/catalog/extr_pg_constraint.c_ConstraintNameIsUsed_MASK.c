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
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ ConstraintCategory ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conname ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_DOMAIN ; 
 scalar_t__ CONSTRAINT_RELATION ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC9(ConstraintCategory conCat, Oid objId,
					 const char *conname)
{
	bool		found;
	Relation	conDesc;
	SysScanDesc conscan;
	ScanKeyData skey[3];

	conDesc = FUNC8(ConstraintRelationId, AccessShareLock);

	FUNC3(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2((conCat == CONSTRAINT_RELATION)
								 ? objId : InvalidOid));
	FUNC3(&skey[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2((conCat == CONSTRAINT_DOMAIN)
								 ? objId : InvalidOid));
	FUNC3(&skey[2],
				Anum_pg_constraint_conname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(conname));

	conscan = FUNC4(conDesc, ConstraintRelidTypidNameIndexId,
								 true, NULL, 3, skey);

	/* There can be at most one matching row */
	found = (FUNC1(FUNC6(conscan)));

	FUNC5(conscan);
	FUNC7(conDesc, AccessShareLock);

	return found;
}