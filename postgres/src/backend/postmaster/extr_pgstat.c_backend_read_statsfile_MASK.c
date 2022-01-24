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
typedef  scalar_t__ TimestampTz ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int PGSTAT_INQ_LOOP_COUNT ; 
 int PGSTAT_POLL_LOOP_COUNT ; 
 long PGSTAT_RETRY_DELAY ; 
 int PGSTAT_STAT_INTERVAL ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ pgStatDBHash ; 
 int /*<<< orphan*/  pgStatRunningInCollector ; 
 int /*<<< orphan*/  FUNC10 (long) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static void
FUNC16(void)
{
	TimestampTz min_ts = 0;
	TimestampTz ref_ts = 0;
	Oid			inquiry_db;
	int			count;

	/* already read it? */
	if (pgStatDBHash)
		return;
	FUNC0(!pgStatRunningInCollector);

	/*
	 * In a normal backend, we check staleness of the data for our own DB, and
	 * so we send MyDatabaseId in inquiry messages.  In the autovac launcher,
	 * check staleness of the shared-catalog data, and send InvalidOid in
	 * inquiry messages so as not to force writing unnecessary data.
	 */
	if (FUNC3())
		inquiry_db = InvalidOid;
	else
		inquiry_db = MyDatabaseId;

	/*
	 * Loop until fresh enough stats file is available or we ran out of time.
	 * The stats inquiry message is sent repeatedly in case collector drops
	 * it; but not every single time, as that just swamps the collector.
	 */
	for (count = 0; count < PGSTAT_POLL_LOOP_COUNT; count++)
	{
		bool		ok;
		TimestampTz file_ts = 0;
		TimestampTz cur_ts;

		FUNC1();

		ok = FUNC11(inquiry_db, false, &file_ts);

		cur_ts = FUNC2();
		/* Calculate min acceptable timestamp, if we didn't already */
		if (count == 0 || cur_ts < ref_ts)
		{
			/*
			 * We set the minimum acceptable timestamp to PGSTAT_STAT_INTERVAL
			 * msec before now.  This indirectly ensures that the collector
			 * needn't write the file more often than PGSTAT_STAT_INTERVAL. In
			 * an autovacuum worker, however, we want a lower delay to avoid
			 * using stale data, so we use PGSTAT_RETRY_DELAY (since the
			 * number of workers is low, this shouldn't be a problem).
			 *
			 * We don't recompute min_ts after sleeping, except in the
			 * unlikely case that cur_ts went backwards.  So we might end up
			 * accepting a file a bit older than PGSTAT_STAT_INTERVAL.  In
			 * practice that shouldn't happen, though, as long as the sleep
			 * time is less than PGSTAT_STAT_INTERVAL; and we don't want to
			 * tell the collector that our cutoff time is less than what we'd
			 * actually accept.
			 */
			ref_ts = cur_ts;
			if (FUNC4())
				min_ts = FUNC5(ref_ts,
													 -PGSTAT_RETRY_DELAY);
			else
				min_ts = FUNC5(ref_ts,
													 -PGSTAT_STAT_INTERVAL);
		}

		/*
		 * If the file timestamp is actually newer than cur_ts, we must have
		 * had a clock glitch (system time went backwards) or there is clock
		 * skew between our processor and the stats collector's processor.
		 * Accept the file, but send an inquiry message anyway to make
		 * pgstat_recv_inquiry do a sanity check on the collector's time.
		 */
		if (ok && file_ts > cur_ts)
		{
			/*
			 * A small amount of clock skew between processors isn't terribly
			 * surprising, but a large difference is worth logging.  We
			 * arbitrarily define "large" as 1000 msec.
			 */
			if (file_ts >= FUNC5(cur_ts, 1000))
			{
				char	   *filetime;
				char	   *mytime;

				/* Copy because timestamptz_to_str returns a static buffer */
				filetime = FUNC14(FUNC15(file_ts));
				mytime = FUNC14(FUNC15(cur_ts));
				FUNC6(LOG, "stats collector's time %s is later than backend local time %s",
					 filetime, mytime);
				FUNC9(filetime);
				FUNC9(mytime);
			}

			FUNC13(cur_ts, min_ts, inquiry_db);
			break;
		}

		/* Normal acceptance case: file is not older than cutoff time */
		if (ok && file_ts >= min_ts)
			break;

		/* Not there or too old, so kick the collector and wait a bit */
		if ((count % PGSTAT_INQ_LOOP_COUNT) == 0)
			FUNC13(cur_ts, min_ts, inquiry_db);

		FUNC10(PGSTAT_RETRY_DELAY * 1000L);
	}

	if (count >= PGSTAT_POLL_LOOP_COUNT)
		FUNC7(LOG,
				(FUNC8("using stale statistics instead of current ones "
						"because stats collector is not responding")));

	/*
	 * Autovacuum launcher wants stats about all databases, but a shallow read
	 * is sufficient.  Regular backends want a deep read for just the tables
	 * they can see (MyDatabaseId + shared catalogs).
	 */
	if (FUNC3())
		pgStatDBHash = FUNC12(InvalidOid, false, false);
	else
		pgStatDBHash = FUNC12(MyDatabaseId, false, true);
}