#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ InvalidTransactionId ; 
 int PROCARRAY_FLAGS_DEFAULT ; 
 int PROCARRAY_SLOTS_XMIN ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ hot_standby_feedback ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ reply_message ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int wal_receiver_status_interval ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wrconn ; 

__attribute__((used)) static void
FUNC16(bool immed)
{
	TimestampTz now;
	FullTransactionId nextFullXid;
	TransactionId nextXid;
	uint32		xmin_epoch,
				catalog_xmin_epoch;
	TransactionId xmin,
				catalog_xmin;
	static TimestampTz sendTime = 0;

	/* initially true so we always send at least one feedback message */
	static bool master_has_standby_xmin = true;

	/*
	 * If the user doesn't want status to be reported to the master, be sure
	 * to exit before doing anything at all.
	 */
	if ((wal_receiver_status_interval <= 0 || !hot_standby_feedback) &&
		!master_has_standby_xmin)
		return;

	/* Get current timestamp. */
	now = FUNC1();

	if (!immed)
	{
		/*
		 * Send feedback at most once per wal_receiver_status_interval.
		 */
		if (!FUNC6(sendTime, now,
										wal_receiver_status_interval * 1000))
			return;
		sendTime = now;
	}

	/*
	 * If Hot Standby is not yet accepting connections there is nothing to
	 * send. Check this after the interval has expired to reduce number of
	 * calls.
	 *
	 * Bailing out here also ensures that we don't send feedback until we've
	 * read our own replication slot state, so we don't tell the master to
	 * discard needed xmin or catalog_xmin from any slots that may exist on
	 * this replica.
	 */
	if (!FUNC3())
		return;

	/*
	 * Make the expensive call to get the oldest xmin once we are certain
	 * everything else has been checked.
	 */
	if (hot_standby_feedback)
	{
		TransactionId slot_xmin;

		/*
		 * Usually GetOldestXmin() would include both global replication slot
		 * xmin and catalog_xmin in its calculations, but we want to derive
		 * separate values for each of those. So we ask for an xmin that
		 * excludes the catalog_xmin.
		 */
		xmin = FUNC2(NULL,
							 PROCARRAY_FLAGS_DEFAULT | PROCARRAY_SLOTS_XMIN);

		FUNC4(&slot_xmin, &catalog_xmin);

		if (FUNC7(slot_xmin) &&
			FUNC8(slot_xmin, xmin))
			xmin = slot_xmin;
	}
	else
	{
		xmin = InvalidTransactionId;
		catalog_xmin = InvalidTransactionId;
	}

	/*
	 * Get epoch and adjust if nextXid and oldestXmin are different sides of
	 * the epoch boundary.
	 */
	nextFullXid = FUNC5();
	nextXid = FUNC9(nextFullXid);
	xmin_epoch = FUNC0(nextFullXid);
	catalog_xmin_epoch = xmin_epoch;
	if (nextXid < xmin)
		xmin_epoch--;
	if (nextXid < catalog_xmin)
		catalog_xmin_epoch--;

	FUNC10(DEBUG2, "sending hot standby feedback xmin %u epoch %u catalog_xmin %u catalog_xmin_epoch %u",
		 xmin, xmin_epoch, catalog_xmin, catalog_xmin_epoch);

	/* Construct the message and send it. */
	FUNC14(&reply_message);
	FUNC11(&reply_message, 'h');
	FUNC13(&reply_message, FUNC1());
	FUNC12(&reply_message, xmin);
	FUNC12(&reply_message, xmin_epoch);
	FUNC12(&reply_message, catalog_xmin);
	FUNC12(&reply_message, catalog_xmin_epoch);
	FUNC15(wrconn, reply_message.data, reply_message.len);
	if (FUNC7(xmin) || FUNC7(catalog_xmin))
		master_has_standby_xmin = true;
	else
		master_has_standby_xmin = false;
}