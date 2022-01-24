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

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InheritsRelidSeqnoIndexId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC8(Oid relationId)
{
	Relation	catalog;
	SysScanDesc scan;
	ScanKeyData skey;
	bool		result;

	catalog = FUNC7(InheritsRelationId, AccessShareLock);
	FUNC2(&skey, Anum_pg_inherits_inhrelid, BTEqualStrategyNumber,
				F_OIDEQ, FUNC1(relationId));
	scan = FUNC3(catalog, InheritsRelidSeqnoIndexId, true,
							  NULL, 1, &skey);
	result = FUNC0(FUNC5(scan));
	FUNC4(scan);
	FUNC6(catalog, AccessShareLock);

	return result;
}