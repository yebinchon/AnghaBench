#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int bloomLength; } ;
struct TYPE_14__ {scalar_t__ magickNumber; int /*<<< orphan*/  opts; } ;
struct TYPE_13__ {int nColumns; TYPE_5__ opts; scalar_t__ sizeOfBloomTuple; int /*<<< orphan*/ * collations; int /*<<< orphan*/ * hashFn; } ;
struct TYPE_12__ {void* rd_amcache; int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/ * rd_indcollation; TYPE_1__* rd_att; } ;
struct TYPE_11__ {int natts; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_3__ BloomState ;
typedef  int /*<<< orphan*/  BloomSignatureWord ;
typedef  int /*<<< orphan*/  BloomOptions ;
typedef  TYPE_4__ BloomMetaPageData ;

/* Variables and functions */
 scalar_t__ BLOOMTUPLEHDRSZ ; 
 int /*<<< orphan*/  BLOOM_HASH_PROC ; 
 scalar_t__ BLOOM_MAGICK_NUMBER ; 
 int /*<<< orphan*/  BLOOM_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,void*,int) ; 

void
FUNC11(BloomState *state, Relation index)
{
	int			i;

	state->nColumns = index->rd_att->natts;

	/* Initialize hash function for each attribute */
	for (i = 0; i < index->rd_att->natts; i++)
	{
		FUNC8(&(state->hashFn[i]),
					   FUNC9(index, i + 1, BLOOM_HASH_PROC),
					   CurrentMemoryContext);
		state->collations[i] = index->rd_indcollation[i];
	}

	/* Initialize amcache if needed with options from metapage */
	if (!index->rd_amcache)
	{
		Buffer		buffer;
		Page		page;
		BloomMetaPageData *meta;
		BloomOptions *opts;

		opts = FUNC4(index->rd_indexcxt, sizeof(BloomOptions));

		buffer = FUNC5(index, BLOOM_METAPAGE_BLKNO);
		FUNC3(buffer, BUFFER_LOCK_SHARE);

		page = FUNC2(buffer);

		if (!FUNC1(page))
			FUNC7(ERROR, "Relation is not a bloom index");
		meta = FUNC0(FUNC2(buffer));

		if (meta->magickNumber != BLOOM_MAGICK_NUMBER)
			FUNC7(ERROR, "Relation is not a bloom index");

		*opts = meta->opts;

		FUNC6(buffer);

		index->rd_amcache = (void *) opts;
	}

	FUNC10(&state->opts, index->rd_amcache, sizeof(state->opts));
	state->sizeOfBloomTuple = BLOOMTUPLEHDRSZ +
		sizeof(BloomSignatureWord) * state->opts.bloomLength;
}