#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
struct TYPE_10__ {scalar_t__ fn_oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/ * rd_support; TYPE_3__* rd_supportinfo; TYPE_1__* rd_indam; } ;
struct TYPE_8__ {int amsupport; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  TYPE_3__ FmgrInfo ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

FmgrInfo *
FUNC5(Relation irel,
				  AttrNumber attnum,
				  uint16 procnum)
{
	FmgrInfo   *locinfo;
	int			nproc;
	int			procindex;

	nproc = irel->rd_indam->amsupport;

	FUNC0(procnum > 0 && procnum <= (uint16) nproc);

	procindex = (nproc * (attnum - 1)) + (procnum - 1);

	locinfo = irel->rd_supportinfo;

	FUNC0(locinfo != NULL);

	locinfo += procindex;

	/* Initialize the lookup info if first time through */
	if (locinfo->fn_oid == InvalidOid)
	{
		RegProcedure *loc = irel->rd_support;
		RegProcedure procId;

		FUNC0(loc != NULL);

		procId = loc[procindex];

		/*
		 * Complain if function was not found during IndexSupportInitialize.
		 * This should not happen unless the system tables contain bogus
		 * entries for the index opclass.  (If an AM wants to allow a support
		 * function to be optional, it can use index_getprocid.)
		 */
		if (!FUNC1(procId))
			FUNC3(ERROR, "missing support function %d for attribute %d of index \"%s\"",
				 procnum, attnum, FUNC2(irel));

		FUNC4(procId, locinfo, irel->rd_indexcxt);
	}

	return locinfo;
}