#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_9__ {int /*<<< orphan*/  prslextype; int /*<<< orphan*/  prsheadline; int /*<<< orphan*/  prsend; int /*<<< orphan*/  prstoken; int /*<<< orphan*/  prsstart; } ;
struct TYPE_8__ {int keysize; int entrysize; scalar_t__ prsId; int isvalid; int /*<<< orphan*/  prsheadline; int /*<<< orphan*/  headlineOid; int /*<<< orphan*/  prsend; int /*<<< orphan*/  endOid; int /*<<< orphan*/  prstoken; int /*<<< orphan*/  tokenOid; int /*<<< orphan*/  prsstart; int /*<<< orphan*/  startOid; int /*<<< orphan*/  lextypeOid; } ;
typedef  TYPE_1__ TSParserCacheEntry ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ HASHCTL ;
typedef  TYPE_3__* Form_pg_ts_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidateTSCacheCallBack ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSPARSEROID ; 
 int /*<<< orphan*/ * TSParserCacheHash ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int,TYPE_1__*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* lastUsedParser ; 

TSParserCacheEntry *
FUNC15(Oid prsId)
{
	TSParserCacheEntry *entry;

	if (TSParserCacheHash == NULL)
	{
		/* First time through: initialize the hash table */
		HASHCTL		ctl;

		FUNC5(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(Oid);
		ctl.entrysize = sizeof(TSParserCacheEntry);
		TSParserCacheHash = FUNC13("Tsearch parser cache", 4,
										&ctl, HASH_ELEM | HASH_BLOBS);
		/* Flush cache on pg_ts_parser changes */
		FUNC1(TSPARSEROID, InvalidateTSCacheCallBack,
									  FUNC8(TSParserCacheHash));

		/* Also make sure CacheMemoryContext exists */
		if (!CacheMemoryContext)
			FUNC2();
	}

	/* Check single-entry cache */
	if (lastUsedParser && lastUsedParser->prsId == prsId &&
		lastUsedParser->isvalid)
		return lastUsedParser;

	/* Try to look up an existing entry */
	entry = (TSParserCacheEntry *) FUNC14(TSParserCacheHash,
											   (void *) &prsId,
											   HASH_FIND, NULL);
	if (entry == NULL || !entry->isvalid)
	{
		/*
		 * If we didn't find one, we want to make one. But first look up the
		 * object to be sure the OID is real.
		 */
		HeapTuple	tp;
		Form_pg_ts_parser prs;

		tp = FUNC10(TSPARSEROID, FUNC6(prsId));
		if (!FUNC4(tp))
			FUNC11(ERROR, "cache lookup failed for text search parser %u",
				 prsId);
		prs = (Form_pg_ts_parser) FUNC3(tp);

		/*
		 * Sanity checks
		 */
		if (!FUNC7(prs->prsstart))
			FUNC11(ERROR, "text search parser %u has no prsstart method", prsId);
		if (!FUNC7(prs->prstoken))
			FUNC11(ERROR, "text search parser %u has no prstoken method", prsId);
		if (!FUNC7(prs->prsend))
			FUNC11(ERROR, "text search parser %u has no prsend method", prsId);

		if (entry == NULL)
		{
			bool		found;

			/* Now make the cache entry */
			entry = (TSParserCacheEntry *)
				FUNC14(TSParserCacheHash,
							(void *) &prsId,
							HASH_ENTER, &found);
			FUNC0(!found);		/* it wasn't there a moment ago */
		}

		FUNC5(entry, 0, sizeof(TSParserCacheEntry));
		entry->prsId = prsId;
		entry->startOid = prs->prsstart;
		entry->tokenOid = prs->prstoken;
		entry->endOid = prs->prsend;
		entry->headlineOid = prs->prsheadline;
		entry->lextypeOid = prs->prslextype;

		FUNC9(tp);

		FUNC12(entry->startOid, &entry->prsstart, CacheMemoryContext);
		FUNC12(entry->tokenOid, &entry->prstoken, CacheMemoryContext);
		FUNC12(entry->endOid, &entry->prsend, CacheMemoryContext);
		if (FUNC7(entry->headlineOid))
			FUNC12(entry->headlineOid, &entry->prsheadline,
						  CacheMemoryContext);

		entry->isvalid = true;
	}

	lastUsedParser = entry;

	return entry;
}