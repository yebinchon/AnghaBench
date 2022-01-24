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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_2__ {scalar_t__ oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_tablespace ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 char* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TableSpaceRelationId ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(Oid db_id)
{
	bool		result = false;
	Relation	rel;
	TableScanDesc scan;
	HeapTuple	tuple;

	rel = FUNC8(TableSpaceRelationId, AccessShareLock);
	scan = FUNC5(rel, 0, NULL);
	while ((tuple = FUNC2(scan, ForwardScanDirection)) != NULL)
	{
		Form_pg_tablespace spcform = (Form_pg_tablespace) FUNC0(tuple);
		Oid			dsttablespace = spcform->oid;
		char	   *dstpath;
		struct stat st;

		/* Don't mess with the global tablespace */
		if (dsttablespace == GLOBALTABLESPACE_OID)
			continue;

		dstpath = FUNC1(db_id, dsttablespace);

		if (FUNC3(dstpath, &st) == 0)
		{
			/* Found a conflicting file (or directory, whatever) */
			FUNC4(dstpath);
			result = true;
			break;
		}

		FUNC4(dstpath);
	}

	FUNC7(scan);
	FUNC6(rel, AccessShareLock);

	return result;
}