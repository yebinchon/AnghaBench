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
struct TYPE_3__ {scalar_t__ tablespace_id; scalar_t__ db_id; } ;
typedef  TYPE_1__ xl_dbase_drop_rec ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_4__ {scalar_t__ oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_tablespace ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 char* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RM_DBASE_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TableSpaceRelationId ; 
 int /*<<< orphan*/  WARNING ; 
 int XLOG_DBASE_DROP ; 
 int XLR_SPECIAL_REL_UPDATE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Oid db_id)
{
	Relation	rel;
	TableScanDesc scan;
	HeapTuple	tuple;

	rel = FUNC15(TableSpaceRelationId, AccessShareLock);
	scan = FUNC12(rel, 0, NULL);
	while ((tuple = FUNC8(scan, ForwardScanDirection)) != NULL)
	{
		Form_pg_tablespace spcform = (Form_pg_tablespace) FUNC0(tuple);
		Oid			dsttablespace = spcform->oid;
		char	   *dstpath;
		struct stat st;

		/* Don't mess with the global tablespace */
		if (dsttablespace == GLOBALTABLESPACE_OID)
			continue;

		dstpath = FUNC1(db_id, dsttablespace);

		if (FUNC9(dstpath, &st) < 0 || !FUNC2(st.st_mode))
		{
			/* Assume we can ignore it */
			FUNC10(dstpath);
			continue;
		}

		if (!FUNC11(dstpath, true))
			FUNC6(WARNING,
					(FUNC7("some useless files may be left behind in old database directory \"%s\"",
							dstpath)));

		/* Record the filesystem change in XLOG */
		{
			xl_dbase_drop_rec xlrec;

			xlrec.db_id = db_id;
			xlrec.tablespace_id = dsttablespace;

			FUNC3();
			FUNC5((char *) &xlrec, sizeof(xl_dbase_drop_rec));

			(void) FUNC4(RM_DBASE_ID,
							  XLOG_DBASE_DROP | XLR_SPECIAL_REL_UPDATE);
		}

		FUNC10(dstpath);
	}

	FUNC14(scan);
	FUNC13(rel, AccessShareLock);
}