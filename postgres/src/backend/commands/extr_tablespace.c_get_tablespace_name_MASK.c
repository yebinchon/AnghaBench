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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_2__ {int /*<<< orphan*/  spcname; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_tablespace ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_tablespace_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TableSpaceRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC11(Oid spc_oid)
{
	char	   *result;
	Relation	rel;
	TableScanDesc scandesc;
	HeapTuple	tuple;
	ScanKeyData entry[1];

	/*
	 * Search pg_tablespace.  We use a heapscan here even though there is an
	 * index on oid, on the theory that pg_tablespace will usually have just a
	 * few entries and so an indexed lookup is a waste of effort.
	 */
	rel = FUNC10(TableSpaceRelationId, AccessShareLock);

	FUNC4(&entry[0],
				Anum_pg_tablespace_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(spc_oid));
	scandesc = FUNC7(rel, 1, entry);
	tuple = FUNC5(scandesc, ForwardScanDirection);

	/* We assume that there can be at most one matching tuple */
	if (FUNC1(tuple))
		result = FUNC6(FUNC2(((Form_pg_tablespace) FUNC0(tuple))->spcname));
	else
		result = NULL;

	FUNC9(scandesc);
	FUNC8(rel, AccessShareLock);

	return result;
}