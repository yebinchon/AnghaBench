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
typedef  scalar_t__ TransactionId ;
struct TYPE_2__ {char* oldestXidDB; int /*<<< orphan*/  nextFullXid; scalar_t__ xidWrapLimit; scalar_t__ xidStopLimit; scalar_t__ xidWarnLimit; scalar_t__ xidVacLimit; scalar_t__ oldestXid; } ;
typedef  char* Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ FirstNormalTransactionId ; 
 int /*<<< orphan*/  InRecovery ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MaxTransactionId ; 
 int /*<<< orphan*/  PMSIGNAL_START_AUTOVAC_LAUNCHER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ShmemVariableCache ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 
 scalar_t__ autovacuum_freeze_max_age ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,scalar_t__) ; 
 char* FUNC11 (char*) ; 

void
FUNC12(TransactionId oldest_datfrozenxid, Oid oldest_datoid)
{
	TransactionId xidVacLimit;
	TransactionId xidWarnLimit;
	TransactionId xidStopLimit;
	TransactionId xidWrapLimit;
	TransactionId curXid;

	FUNC0(FUNC6(oldest_datfrozenxid));

	/*
	 * The place where we actually get into deep trouble is halfway around
	 * from the oldest potentially-existing XID.  (This calculation is
	 * probably off by one or two counts, because the special XIDs reduce the
	 * size of the loop a little bit.  But we throw in plenty of slop below,
	 * so it doesn't matter.)
	 */
	xidWrapLimit = oldest_datfrozenxid + (MaxTransactionId >> 1);
	if (xidWrapLimit < FirstNormalTransactionId)
		xidWrapLimit += FirstNormalTransactionId;

	/*
	 * We'll refuse to continue assigning XIDs in interactive mode once we get
	 * within 1M transactions of data loss.  This leaves lots of room for the
	 * DBA to fool around fixing things in a standalone backend, while not
	 * being significant compared to total XID space. (Note that since
	 * vacuuming requires one transaction per table cleaned, we had better be
	 * sure there's lots of XIDs left...)
	 */
	xidStopLimit = xidWrapLimit - 1000000;
	if (xidStopLimit < FirstNormalTransactionId)
		xidStopLimit -= FirstNormalTransactionId;

	/*
	 * We'll start complaining loudly when we get within 10M transactions of
	 * the stop point.  This is kind of arbitrary, but if you let your gas
	 * gauge get down to 1% of full, would you be looking for the next gas
	 * station?  We need to be fairly liberal about this number because there
	 * are lots of scenarios where most transactions are done by automatic
	 * clients that won't pay attention to warnings. (No, we're not gonna make
	 * this configurable.  If you know enough to configure it, you know enough
	 * to not get in this kind of trouble in the first place.)
	 */
	xidWarnLimit = xidStopLimit - 10000000;
	if (xidWarnLimit < FirstNormalTransactionId)
		xidWarnLimit -= FirstNormalTransactionId;

	/*
	 * We'll start trying to force autovacuums when oldest_datfrozenxid gets
	 * to be more than autovacuum_freeze_max_age transactions old.
	 *
	 * Note: guc.c ensures that autovacuum_freeze_max_age is in a sane range,
	 * so that xidVacLimit will be well before xidWarnLimit.
	 *
	 * Note: autovacuum_freeze_max_age is a PGC_POSTMASTER parameter so that
	 * we don't have to worry about dealing with on-the-fly changes in its
	 * value.  It doesn't look practical to update shared state from a GUC
	 * assign hook (too many processes would try to execute the hook,
	 * resulting in race conditions as well as crashes of those not connected
	 * to shared memory).  Perhaps this can be improved someday.  See also
	 * SetMultiXactIdLimit.
	 */
	xidVacLimit = oldest_datfrozenxid + autovacuum_freeze_max_age;
	if (xidVacLimit < FirstNormalTransactionId)
		xidVacLimit += FirstNormalTransactionId;

	/* Grab lock for just long enough to set the new limit values */
	FUNC2(XidGenLock, LW_EXCLUSIVE);
	ShmemVariableCache->oldestXid = oldest_datfrozenxid;
	ShmemVariableCache->xidVacLimit = xidVacLimit;
	ShmemVariableCache->xidWarnLimit = xidWarnLimit;
	ShmemVariableCache->xidStopLimit = xidStopLimit;
	ShmemVariableCache->xidWrapLimit = xidWrapLimit;
	ShmemVariableCache->oldestXidDB = oldest_datoid;
	curXid = FUNC7(ShmemVariableCache->nextFullXid);
	FUNC3(XidGenLock);

	/* Log the info */
	FUNC8(DEBUG1,
			(FUNC10("transaction ID wrap limit is %u, limited by database with OID %u",
					xidWrapLimit, oldest_datoid)));

	/*
	 * If past the autovacuum force point, immediately signal an autovac
	 * request.  The reason for this is that autovac only processes one
	 * database per invocation.  Once it's finished cleaning up the oldest
	 * database, it'll call here, and we'll signal the postmaster to start
	 * another iteration immediately if there are still any old databases.
	 */
	if (FUNC5(curXid, xidVacLimit) &&
		IsUnderPostmaster && !InRecovery)
		FUNC4(PMSIGNAL_START_AUTOVAC_LAUNCHER);

	/* Give an immediate warning if past the wrap warn point */
	if (FUNC5(curXid, xidWarnLimit) && !InRecovery)
	{
		char	   *oldest_datname;

		/*
		 * We can be called when not inside a transaction, for example during
		 * StartupXLOG().  In such a case we cannot do database access, so we
		 * must just report the oldest DB's OID.
		 *
		 * Note: it's also possible that get_database_name fails and returns
		 * NULL, for example because the database just got dropped.  We'll
		 * still warn, even though the warning might now be unnecessary.
		 */
		if (FUNC1())
			oldest_datname = FUNC11(oldest_datoid);
		else
			oldest_datname = NULL;

		if (oldest_datname)
			FUNC8(WARNING,
					(FUNC10("database \"%s\" must be vacuumed within %u transactions",
							oldest_datname,
							xidWrapLimit - curXid),
					 FUNC9("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
							 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
		else
			FUNC8(WARNING,
					(FUNC10("database with OID %u must be vacuumed within %u transactions",
							oldest_datoid,
							xidWrapLimit - curXid),
					 FUNC9("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
							 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
	}
}