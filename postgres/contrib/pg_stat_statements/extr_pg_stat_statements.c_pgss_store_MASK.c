#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  pgssJumbleState ;
struct TYPE_11__ {scalar_t__ queryid; int /*<<< orphan*/  dbid; int /*<<< orphan*/  userid; } ;
typedef  TYPE_2__ pgssHashKey ;
struct TYPE_10__ {int calls; double total_time; double min_time; double max_time; double mean_time; double sum_var_time; int /*<<< orphan*/  usage; int /*<<< orphan*/  blk_write_time; int /*<<< orphan*/  blk_read_time; int /*<<< orphan*/  temp_blks_written; int /*<<< orphan*/  temp_blks_read; int /*<<< orphan*/  local_blks_written; int /*<<< orphan*/  local_blks_dirtied; int /*<<< orphan*/  local_blks_read; int /*<<< orphan*/  local_blks_hit; int /*<<< orphan*/  shared_blks_written; int /*<<< orphan*/  shared_blks_dirtied; int /*<<< orphan*/  shared_blks_read; int /*<<< orphan*/  shared_blks_hit; int /*<<< orphan*/  rows; } ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; TYPE_1__ counters; } ;
typedef  TYPE_3__ pgssEntry ;
struct TYPE_14__ {int gc_count; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {int /*<<< orphan*/  blk_write_time; int /*<<< orphan*/  blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_4__ BufferUsage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (double) ; 
 int /*<<< orphan*/  USAGE_INIT ; 
 TYPE_3__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (int /*<<< orphan*/ *,char const*,int,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 TYPE_6__* pgss ; 
 int /*<<< orphan*/  pgss_hash ; 
 scalar_t__ FUNC16 (char const*,int) ; 
 int FUNC17 (char*,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC18 (char const) ; 
 int FUNC19 (char const*) ; 

__attribute__((used)) static void
FUNC20(const char *query, uint64 queryId,
		   int query_location, int query_len,
		   double total_time, uint64 rows,
		   const BufferUsage *bufusage,
		   pgssJumbleState *jstate)
{
	pgssHashKey key;
	pgssEntry  *entry;
	char	   *norm_query = NULL;
	int			encoding = FUNC1();

	FUNC0(query != NULL);

	/* Safety check... */
	if (!pgss || !pgss_hash)
		return;

	/*
	 * Confine our attention to the relevant part of the string, if the query
	 * is a portion of a multi-statement source string.
	 *
	 * First apply starting offset, unless it's -1 (unknown).
	 */
	if (query_location >= 0)
	{
		FUNC0(query_location <= FUNC19(query));
		query += query_location;
		/* Length of 0 (or -1) means "rest of string" */
		if (query_len <= 0)
			query_len = FUNC19(query);
		else
			FUNC0(query_len <= FUNC19(query));
	}
	else
	{
		/* If query location is unknown, distrust query_len as well */
		query_location = 0;
		query_len = FUNC19(query);
	}

	/*
	 * Discard leading and trailing whitespace, too.  Use scanner_isspace()
	 * not libc's isspace(), because we want to match the lexer's behavior.
	 */
	while (query_len > 0 && FUNC18(query[0]))
		query++, query_location++, query_len--;
	while (query_len > 0 && FUNC18(query[query_len - 1]))
		query_len--;

	/*
	 * For utility statements, we just hash the query string to get an ID.
	 */
	if (queryId == FUNC8(0))
	{
		queryId = FUNC16(query, query_len);

		/*
		 * If we are unlucky enough to get a hash of zero(invalid), use
		 * queryID as 2 instead, queryID 1 is already in use for normal
		 * statements.
		 */
		if (queryId == FUNC8(0))
			queryId = FUNC8(2);
	}

	/* Set up key for hashtable search */
	key.userid = FUNC2();
	key.dbid = MyDatabaseId;
	key.queryid = queryId;

	/* Lookup the hash table entry with shared lock. */
	FUNC4(pgss->lock, LW_SHARED);

	entry = (pgssEntry *) FUNC13(pgss_hash, &key, HASH_FIND, NULL);

	/* Create new entry, if not present */
	if (!entry)
	{
		Size		query_offset;
		int			gc_count;
		bool		stored;
		bool		do_gc;

		/*
		 * Create a new, normalized query string if caller asked.  We don't
		 * need to hold the lock while doing this work.  (Note: in any case,
		 * it's possible that someone else creates a duplicate hashtable entry
		 * in the interval where we don't hold the lock below.  That case is
		 * handled by entry_alloc.)
		 */
		if (jstate)
		{
			FUNC5(pgss->lock);
			norm_query = FUNC12(jstate, query,
												   query_location,
												   &query_len,
												   encoding);
			FUNC4(pgss->lock, LW_SHARED);
		}

		/* Append new query text to file with only shared lock held */
		stored = FUNC17(norm_query ? norm_query : query, query_len,
							 &query_offset, &gc_count);

		/*
		 * Determine whether we need to garbage collect external query texts
		 * while the shared lock is still held.  This micro-optimization
		 * avoids taking the time to decide this while holding exclusive lock.
		 */
		do_gc = FUNC14();

		/* Need exclusive lock to make a new hashtable entry - promote */
		FUNC5(pgss->lock);
		FUNC4(pgss->lock, LW_EXCLUSIVE);

		/*
		 * A garbage collection may have occurred while we weren't holding the
		 * lock.  In the unlikely event that this happens, the query text we
		 * stored above will have been garbage collected, so write it again.
		 * This should be infrequent enough that doing it while holding
		 * exclusive lock isn't a performance problem.
		 */
		if (!stored || pgss->gc_count != gc_count)
			stored = FUNC17(norm_query ? norm_query : query, query_len,
								 &query_offset, NULL);

		/* If we failed to write to the text file, give up */
		if (!stored)
			goto done;

		/* OK to create a new hashtable entry */
		entry = FUNC10(&key, query_offset, query_len, encoding,
							jstate != NULL);

		/* If needed, perform garbage collection while exclusive lock held */
		if (do_gc)
			FUNC11();
	}

	/* Increment the counts, except when jstate is not NULL */
	if (!jstate)
	{
		/*
		 * Grab the spinlock while updating the counters (see comment about
		 * locking rules at the head of the file)
		 */
		volatile pgssEntry *e = (volatile pgssEntry *) entry;

		FUNC6(&e->mutex);

		/* "Unstick" entry if it was previously sticky */
		if (e->counters.calls == 0)
			e->counters.usage = USAGE_INIT;

		e->counters.calls += 1;
		e->counters.total_time += total_time;
		if (e->counters.calls == 1)
		{
			e->counters.min_time = total_time;
			e->counters.max_time = total_time;
			e->counters.mean_time = total_time;
		}
		else
		{
			/*
			 * Welford's method for accurately computing variance. See
			 * <http://www.johndcook.com/blog/standard_deviation/>
			 */
			double		old_mean = e->counters.mean_time;

			e->counters.mean_time +=
				(total_time - old_mean) / e->counters.calls;
			e->counters.sum_var_time +=
				(total_time - old_mean) * (total_time - e->counters.mean_time);

			/* calculate min and max time */
			if (e->counters.min_time > total_time)
				e->counters.min_time = total_time;
			if (e->counters.max_time < total_time)
				e->counters.max_time = total_time;
		}
		e->counters.rows += rows;
		e->counters.shared_blks_hit += bufusage->shared_blks_hit;
		e->counters.shared_blks_read += bufusage->shared_blks_read;
		e->counters.shared_blks_dirtied += bufusage->shared_blks_dirtied;
		e->counters.shared_blks_written += bufusage->shared_blks_written;
		e->counters.local_blks_hit += bufusage->local_blks_hit;
		e->counters.local_blks_read += bufusage->local_blks_read;
		e->counters.local_blks_dirtied += bufusage->local_blks_dirtied;
		e->counters.local_blks_written += bufusage->local_blks_written;
		e->counters.temp_blks_read += bufusage->temp_blks_read;
		e->counters.temp_blks_written += bufusage->temp_blks_written;
		e->counters.blk_read_time += FUNC3(bufusage->blk_read_time);
		e->counters.blk_write_time += FUNC3(bufusage->blk_write_time);
		e->counters.usage += FUNC9(total_time);

		FUNC7(&e->mutex);
	}

done:
	FUNC5(pgss->lock);

	/* We postpone this clean-up until we're out of the lock */
	if (norm_query)
		FUNC15(norm_query);
}