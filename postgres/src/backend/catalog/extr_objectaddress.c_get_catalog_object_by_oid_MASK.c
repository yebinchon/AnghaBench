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
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

HeapTuple
FUNC13(Relation catalog, AttrNumber oidcol, Oid objectId)
{
	HeapTuple	tuple;
	Oid			classId = FUNC4(catalog);
	int			oidCacheId = FUNC7(classId);

	if (oidCacheId > 0)
	{
		tuple = FUNC6(oidCacheId, FUNC2(objectId));
		if (!FUNC1(tuple))	/* should not happen */
			return NULL;
	}
	else
	{
		Oid			oidIndexId = FUNC8(classId);
		SysScanDesc scan;
		ScanKeyData skey;

		FUNC0(FUNC3(oidIndexId));

		FUNC5(&skey,
					oidcol,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC2(objectId));

		scan = FUNC10(catalog, oidIndexId, true,
								  NULL, 1, &skey);
		tuple = FUNC12(scan);
		if (!FUNC1(tuple))
		{
			FUNC11(scan);
			return NULL;
		}
		tuple = FUNC9(tuple);

		FUNC11(scan);
	}

	return tuple;
}