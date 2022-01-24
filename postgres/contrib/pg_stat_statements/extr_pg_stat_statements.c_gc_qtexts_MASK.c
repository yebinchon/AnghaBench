#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int query_len; int query_offset; } ;
typedef  TYPE_1__ pgssEntry ;
struct TYPE_5__ {int extent; int mean_query_len; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* ASSUMED_LENGTH_INIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  PGSS_TEXT_FILE ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_2__* pgss ; 
 int /*<<< orphan*/  pgss_hash ; 
 char* FUNC14 (int,int,char*,int) ; 
 char* FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void)
{
	char	   *qbuffer;
	Size		qbuffer_size;
	FILE	   *qfile = NULL;
	HASH_SEQ_STATUS hash_seq;
	pgssEntry  *entry;
	Size		extent;
	int			nentries;

	/*
	 * When called from pgss_store, some other session might have proceeded
	 * with garbage collection in the no-lock-held interim of lock strength
	 * escalation.  Check once more that this is actually necessary.
	 */
	if (!FUNC13())
		return;

	/*
	 * Load the old texts file.  If we fail (out of memory, for instance),
	 * invalidate query texts.  Hopefully this is rare.  It might seem better
	 * to leave things alone on an OOM failure, but the problem is that the
	 * file is only going to get bigger; hoping for a future non-OOM result is
	 * risky and can easily lead to complete denial of service.
	 */
	qbuffer = FUNC15(&qbuffer_size);
	if (qbuffer == NULL)
		goto gc_fail;

	/*
	 * We overwrite the query texts file in place, so as to reduce the risk of
	 * an out-of-disk-space failure.  Since the file is guaranteed not to get
	 * larger, this should always work on traditional filesystems; though we
	 * could still lose on copy-on-write filesystems.
	 */
	qfile = FUNC0(PGSS_TEXT_FILE, PG_BINARY_W);
	if (qfile == NULL)
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not write file \"%s\": %m",
						PGSS_TEXT_FILE)));
		goto gc_fail;
	}

	extent = 0;
	nentries = 0;

	FUNC10(&hash_seq, pgss_hash);
	while ((entry = FUNC11(&hash_seq)) != NULL)
	{
		int			query_len = entry->query_len;
		char	   *qry = FUNC14(entry->query_offset,
									  query_len,
									  qbuffer,
									  qbuffer_size);

		if (qry == NULL)
		{
			/* Trouble ... drop the text */
			entry->query_offset = 0;
			entry->query_len = -1;
			/* entry will not be counted in mean query length computation */
			continue;
		}

		if (FUNC9(qry, 1, query_len + 1, qfile) != query_len + 1)
		{
			FUNC3(LOG,
					(FUNC4(),
					 FUNC5("could not write file \"%s\": %m",
							PGSS_TEXT_FILE)));
			FUNC12(&hash_seq);
			goto gc_fail;
		}

		entry->query_offset = extent;
		extent += query_len + 1;
		nentries++;
	}

	/*
	 * Truncate away any now-unused space.  If this fails for some odd reason,
	 * we log it, but there's no need to fail.
	 */
	if (FUNC8(FUNC6(qfile), extent) != 0)
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not truncate file \"%s\": %m",
						PGSS_TEXT_FILE)));

	if (FUNC1(qfile))
	{
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not write file \"%s\": %m",
						PGSS_TEXT_FILE)));
		qfile = NULL;
		goto gc_fail;
	}

	FUNC2(DEBUG1, "pgss gc of queries file shrunk size from %zu to %zu",
		 pgss->extent, extent);

	/* Reset the shared extent pointer */
	pgss->extent = extent;

	/*
	 * Also update the mean query length, to be sure that need_gc_qtexts()
	 * won't still think we have a problem.
	 */
	if (nentries > 0)
		pgss->mean_query_len = extent / nentries;
	else
		pgss->mean_query_len = ASSUMED_LENGTH_INIT;

	FUNC7(qbuffer);

	/*
	 * OK, count a garbage collection cycle.  (Note: even though we have
	 * exclusive lock on pgss->lock, we must take pgss->mutex for this, since
	 * other processes may examine gc_count while holding only the mutex.
	 * Also, we have to advance the count *after* we've rewritten the file,
	 * else other processes might not realize they read a stale file.)
	 */
	FUNC16();

	return;

gc_fail:
	/* clean up resources */
	if (qfile)
		FUNC1(qfile);
	if (qbuffer)
		FUNC7(qbuffer);

	/*
	 * Since the contents of the external file are now uncertain, mark all
	 * hashtable entries as having invalid texts.
	 */
	FUNC10(&hash_seq, pgss_hash);
	while ((entry = FUNC11(&hash_seq)) != NULL)
	{
		entry->query_offset = 0;
		entry->query_len = -1;
	}

	/*
	 * Destroy the query text file and create a new, empty one
	 */
	(void) FUNC17(PGSS_TEXT_FILE);
	qfile = FUNC0(PGSS_TEXT_FILE, PG_BINARY_W);
	if (qfile == NULL)
		FUNC3(LOG,
				(FUNC4(),
				 FUNC5("could not recreate file \"%s\": %m",
						PGSS_TEXT_FILE)));
	else
		FUNC1(qfile);

	/* Reset the shared extent pointer */
	pgss->extent = 0;

	/* Reset mean_query_len to match the new state */
	pgss->mean_query_len = ASSUMED_LENGTH_INIT;

	/*
	 * Bump the GC count even though we failed.
	 *
	 * This is needed to make concurrent readers of file without any lock on
	 * pgss->lock notice existence of new version of file.  Once readers
	 * subsequently observe a change in GC count with pgss->lock held, that
	 * forces a safe reopen of file.  Writers also require that we bump here,
	 * of course.  (As required by locking protocol, readers and writers don't
	 * trust earlier file contents until gc_count is found unchanged after
	 * pgss->lock acquired in shared or exclusive mode respectively.)
	 */
	FUNC16();
}