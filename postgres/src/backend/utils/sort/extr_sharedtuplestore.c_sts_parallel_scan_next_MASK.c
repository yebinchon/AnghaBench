#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ read_ntuples; scalar_t__ read_ntuples_available; size_t read_participant; scalar_t__ read_next_page; int participant; TYPE_1__* sts; int /*<<< orphan*/ * read_file; scalar_t__ read_bytes; int /*<<< orphan*/  fileset; } ;
struct TYPE_11__ {int overflow; scalar_t__ ntuples; } ;
struct TYPE_10__ {scalar_t__ read_page; scalar_t__ npages; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int nparticipants; TYPE_2__* participants; } ;
typedef  TYPE_2__ SharedTuplestoreParticipant ;
typedef  TYPE_3__ SharedTuplestoreChunk ;
typedef  TYPE_4__ SharedTuplestoreAccessor ;
typedef  int /*<<< orphan*/ * MinimalTuple ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 scalar_t__ STS_CHUNK_HEADER_SIZE ; 
 int STS_CHUNK_PAGES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_4__*,void*) ; 

MinimalTuple
FUNC12(SharedTuplestoreAccessor *accessor, void *meta_data)
{
	SharedTuplestoreParticipant *p;
	BlockNumber read_page;
	bool		eof;

	for (;;)
	{
		/* Can we read more tuples from the current chunk? */
		if (accessor->read_ntuples < accessor->read_ntuples_available)
			return FUNC11(accessor, meta_data);

		/* Find the location of a new chunk to read. */
		p = &accessor->sts->participants[accessor->read_participant];

		FUNC4(&p->lock, LW_EXCLUSIVE);
		/* We can skip directly past overflow pages we know about. */
		if (p->read_page < accessor->read_next_page)
			p->read_page = accessor->read_next_page;
		eof = p->read_page >= p->npages;
		if (!eof)
		{
			/* Claim the next chunk. */
			read_page = p->read_page;
			/* Advance the read head for the next reader. */
			p->read_page += STS_CHUNK_PAGES;
			accessor->read_next_page = p->read_page;
		}
		FUNC5(&p->lock);

		if (!eof)
		{
			SharedTuplestoreChunk chunk_header;

			/* Make sure we have the file open. */
			if (accessor->read_file == NULL)
			{
				char		name[MAXPGPATH];

				FUNC10(name, accessor, accessor->read_participant);
				accessor->read_file =
					FUNC1(accessor->fileset, name);
			}

			/* Seek and load the chunk header. */
			if (FUNC3(accessor->read_file, read_page) != 0)
				FUNC6(ERROR,
						(FUNC7(),
						 FUNC9("could not read from shared tuplestore temporary file"),
						 FUNC8("Could not seek to next block.")));
			if (FUNC2(accessor->read_file, &chunk_header,
							STS_CHUNK_HEADER_SIZE) != STS_CHUNK_HEADER_SIZE)
				FUNC6(ERROR,
						(FUNC7(),
						 FUNC9("could not read from shared tuplestore temporary file"),
						 FUNC8("Short read while reading chunk header.")));

			/*
			 * If this is an overflow chunk, we skip it and any following
			 * overflow chunks all at once.
			 */
			if (chunk_header.overflow > 0)
			{
				accessor->read_next_page = read_page +
					chunk_header.overflow * STS_CHUNK_PAGES;
				continue;
			}

			accessor->read_ntuples = 0;
			accessor->read_ntuples_available = chunk_header.ntuples;
			accessor->read_bytes = STS_CHUNK_HEADER_SIZE;

			/* Go around again, so we can get a tuple from this chunk. */
		}
		else
		{
			if (accessor->read_file != NULL)
			{
				FUNC0(accessor->read_file);
				accessor->read_file = NULL;
			}

			/*
			 * Try the next participant's file.  If we've gone full circle,
			 * we're done.
			 */
			accessor->read_participant = (accessor->read_participant + 1) %
				accessor->sts->nparticipants;
			if (accessor->read_participant == accessor->participant)
				break;
			accessor->read_next_page = 0;

			/* Go around again, so we can get a chunk from this file. */
		}
	}

	return NULL;
}