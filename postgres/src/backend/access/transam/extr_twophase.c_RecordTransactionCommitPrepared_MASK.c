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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_2__ {int delayChkpt; } ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  int /*<<< orphan*/  RelFileNode ;

/* Variables and functions */
 scalar_t__ DoNotReplicateId ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ InvalidRepOriginId ; 
 TYPE_1__* MyPgXact ; 
 int MyXactFlags ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XactLastRecEnd ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ replorigin_session_origin ; 
 int /*<<< orphan*/  replorigin_session_origin_lsn ; 
 scalar_t__ replorigin_session_origin_timestamp ; 

__attribute__((used)) static void
FUNC9(TransactionId xid,
								int nchildren,
								TransactionId *children,
								int nrels,
								RelFileNode *rels,
								int ninvalmsgs,
								SharedInvalidationMessage *invalmsgs,
								bool initfileinval,
								const char *gid)
{
	XLogRecPtr	recptr;
	TimestampTz committs = FUNC1();
	bool		replorigin;

	/*
	 * Are we using the replication origins feature?  Or, in other words, are
	 * we replaying remote actions?
	 */
	replorigin = (replorigin_session_origin != InvalidRepOriginId &&
				  replorigin_session_origin != DoNotReplicateId);

	FUNC2();

	/* See notes in RecordTransactionCommit */
	MyPgXact->delayChkpt = true;

	/*
	 * Emit the XLOG commit record. Note that we mark 2PC commits as
	 * potentially having AccessExclusiveLocks since we don't know whether or
	 * not they do.
	 */
	recptr = FUNC7(committs,
								 nchildren, children, nrels, rels,
								 ninvalmsgs, invalmsgs,
								 initfileinval, false,
								 MyXactFlags | XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK,
								 xid, gid);


	if (replorigin)
		/* Move LSNs forward for this replication origin */
		FUNC8(replorigin_session_origin_lsn,
								   XactLastRecEnd);

	/*
	 * Record commit timestamp.  The value comes from plain commit timestamp
	 * if replorigin is not enabled, or replorigin already set a value for us
	 * in replorigin_session_origin_timestamp otherwise.
	 *
	 * We don't need to WAL-log anything here, as the commit record written
	 * above already contains the data.
	 */
	if (!replorigin || replorigin_session_origin_timestamp == 0)
		replorigin_session_origin_timestamp = committs;

	FUNC5(xid, nchildren, children,
								   replorigin_session_origin_timestamp,
								   replorigin_session_origin, false);

	/*
	 * We don't currently try to sleep before flush here ... nor is there any
	 * support for async commit of a prepared xact (the very idea is probably
	 * a contradiction)
	 */

	/* Flush XLOG to disk */
	FUNC6(recptr);

	/* Mark the transaction committed in pg_xact */
	FUNC4(xid, nchildren, children);

	/* Checkpoint can proceed now */
	MyPgXact->delayChkpt = false;

	FUNC0();

	/*
	 * Wait for synchronous replication, if required.
	 *
	 * Note that at this stage we have marked clog, but still show as running
	 * in the procarray and continue to hold locks.
	 */
	FUNC3(recptr, true);
}