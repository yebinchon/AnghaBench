#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_7__ {size_t pgprocno; scalar_t__ databaseId; } ;
struct TYPE_6__ {int /*<<< orphan*/  xmin; } ;
typedef  TYPE_1__ PGXACT ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ MyDatabaseId ; 
 TYPE_5__* MyPgXact ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TransactionXmin ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* allPgXact ; 

bool
FUNC6(TransactionId xmin, PGPROC *proc)
{
	bool		result = false;
	TransactionId xid;
	PGXACT	   *pgxact;

	FUNC0(FUNC3(xmin));
	FUNC0(proc != NULL);

	/* Get lock so source xact can't end while we're doing this */
	FUNC1(ProcArrayLock, LW_SHARED);

	pgxact = &allPgXact[proc->pgprocno];

	/*
	 * Be certain that the referenced PGPROC has an advertised xmin which is
	 * no later than the one we're installing, so that the system-wide xmin
	 * can't go backwards.  Also, make sure it's running in the same database,
	 * so that the per-database xmin cannot go backwards.
	 */
	xid = FUNC5(pgxact->xmin);
	if (proc->databaseId == MyDatabaseId &&
		FUNC3(xid) &&
		FUNC4(xid, xmin))
	{
		MyPgXact->xmin = TransactionXmin = xmin;
		result = true;
	}

	FUNC2(ProcArrayLock);

	return result;
}