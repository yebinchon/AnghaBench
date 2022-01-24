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
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ XactDeferrable ; 
 scalar_t__ XactReadOnly ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(Snapshot snapshot,
								   VirtualTransactionId *sourcevxid,
								   int sourcepid)
{
	FUNC0(FUNC3());

	/*
	 * If this is called by parallel.c in a parallel worker, we don't want to
	 * create a SERIALIZABLEXACT just yet because the leader's
	 * SERIALIZABLEXACT will be installed with AttachSerializableXact().  We
	 * also don't want to reject SERIALIZABLE READ ONLY DEFERRABLE in this
	 * case, because the leader has already determined that the snapshot it
	 * has passed us is safe.  So there is nothing for us to do.
	 */
	if (FUNC2())
		return;

	/*
	 * We do not allow SERIALIZABLE READ ONLY DEFERRABLE transactions to
	 * import snapshots, since there's no way to wait for a safe snapshot when
	 * we're using the snap we're told to.  (XXX instead of throwing an error,
	 * we could just ignore the XactDeferrable flag?)
	 */
	if (XactReadOnly && XactDeferrable)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC6("a snapshot-importing transaction must not be READ ONLY DEFERRABLE")));

	(void) FUNC1(snapshot, sourcevxid,
												 sourcepid);
}