#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ calls; int /*<<< orphan*/  usage; } ;
struct TYPE_9__ {scalar_t__ query_len; int /*<<< orphan*/  key; TYPE_1__ counters; } ;
typedef  TYPE_2__ pgssEntry ;
struct TYPE_10__ {int mean_query_len; int /*<<< orphan*/  cur_median_usage; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int ASSUMED_LENGTH_INIT ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  STICKY_DECREASE_FACTOR ; 
 int USAGE_DEALLOC_PERCENT ; 
 int /*<<< orphan*/  USAGE_DECREASE_FACTOR ; 
 int /*<<< orphan*/  entry_cmp ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 TYPE_4__* pgss ; 
 int /*<<< orphan*/  pgss_hash ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	HASH_SEQ_STATUS hash_seq;
	pgssEntry **entries;
	pgssEntry  *entry;
	int			nvictims;
	int			i;
	Size		tottextlen;
	int			nvalidtexts;

	/*
	 * Sort entries by usage and deallocate USAGE_DEALLOC_PERCENT of them.
	 * While we're scanning the table, apply the decay factor to the usage
	 * values, and update the mean query length.
	 *
	 * Note that the mean query length is almost immediately obsolete, since
	 * we compute it before not after discarding the least-used entries.
	 * Hopefully, that doesn't affect the mean too much; it doesn't seem worth
	 * making two passes to get a more current result.  Likewise, the new
	 * cur_median_usage includes the entries we're about to zap.
	 */

	entries = FUNC6(FUNC2(pgss_hash) * sizeof(pgssEntry *));

	i = 0;
	tottextlen = 0;
	nvalidtexts = 0;

	FUNC4(&hash_seq, pgss_hash);
	while ((entry = FUNC5(&hash_seq)) != NULL)
	{
		entries[i++] = entry;
		/* "Sticky" entries get a different usage decay rate. */
		if (entry->counters.calls == 0)
			entry->counters.usage *= STICKY_DECREASE_FACTOR;
		else
			entry->counters.usage *= USAGE_DECREASE_FACTOR;
		/* In the mean length computation, ignore dropped texts. */
		if (entry->query_len >= 0)
		{
			tottextlen += entry->query_len + 1;
			nvalidtexts++;
		}
	}

	/* Sort into increasing order by usage */
	FUNC8(entries, i, sizeof(pgssEntry *), entry_cmp);

	/* Record the (approximate) median usage */
	if (i > 0)
		pgss->cur_median_usage = entries[i / 2]->counters.usage;
	/* Record the mean query length */
	if (nvalidtexts > 0)
		pgss->mean_query_len = tottextlen / nvalidtexts;
	else
		pgss->mean_query_len = ASSUMED_LENGTH_INIT;

	/* Now zap an appropriate fraction of lowest-usage entries */
	nvictims = FUNC0(10, i * USAGE_DEALLOC_PERCENT / 100);
	nvictims = FUNC1(nvictims, i);

	for (i = 0; i < nvictims; i++)
	{
		FUNC3(pgss_hash, &entries[i]->key, HASH_REMOVE, NULL);
	}

	FUNC7(entries);
}