#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_11__ {scalar_t__ dicttemplate; int /*<<< orphan*/  dictname; } ;
struct TYPE_10__ {scalar_t__ tmpllexize; scalar_t__ tmplinit; } ;
struct TYPE_9__ {int keysize; int entrysize; scalar_t__ dictId; int isvalid; scalar_t__ lexizeOid; int /*<<< orphan*/  dictCtx; int /*<<< orphan*/  lexize; int /*<<< orphan*/  dictData; } ;
typedef  TYPE_1__ TSDictionaryCacheEntry ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ HASHCTL ;
typedef  TYPE_3__* Form_pg_ts_template ;
typedef  TYPE_4__* Form_pg_ts_dict ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Anum_pg_ts_dict_dictinitoption ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidateTSCacheCallBack ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TSDICTOID ; 
 int /*<<< orphan*/ * TSDictionaryCacheHash ; 
 int /*<<< orphan*/  TSTEMPLATEOID ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,TYPE_1__*,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* lastUsedDictionary ; 

TSDictionaryCacheEntry *
FUNC25(Oid dictId)
{
	TSDictionaryCacheEntry *entry;

	if (TSDictionaryCacheHash == NULL)
	{
		/* First time through: initialize the hash table */
		HASHCTL		ctl;

		FUNC7(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(Oid);
		ctl.entrysize = sizeof(TSDictionaryCacheEntry);
		TSDictionaryCacheHash = FUNC23("Tsearch dictionary cache", 8,
											&ctl, HASH_ELEM | HASH_BLOBS);
		/* Flush cache on pg_ts_dict and pg_ts_template changes */
		FUNC2(TSDICTOID, InvalidateTSCacheCallBack,
									  FUNC16(TSDictionaryCacheHash));
		FUNC2(TSTEMPLATEOID, InvalidateTSCacheCallBack,
									  FUNC16(TSDictionaryCacheHash));

		/* Also make sure CacheMemoryContext exists */
		if (!CacheMemoryContext)
			FUNC3();
	}

	/* Check single-entry cache */
	if (lastUsedDictionary && lastUsedDictionary->dictId == dictId &&
		lastUsedDictionary->isvalid)
		return lastUsedDictionary;

	/* Try to look up an existing entry */
	entry = (TSDictionaryCacheEntry *) FUNC24(TSDictionaryCacheHash,
												   (void *) &dictId,
												   HASH_FIND, NULL);
	if (entry == NULL || !entry->isvalid)
	{
		/*
		 * If we didn't find one, we want to make one. But first look up the
		 * object to be sure the OID is real.
		 */
		HeapTuple	tpdict,
					tptmpl;
		Form_pg_ts_dict dict;
		Form_pg_ts_template template;
		MemoryContext saveCtx;

		tpdict = FUNC18(TSDICTOID, FUNC13(dictId));
		if (!FUNC6(tpdict))
			FUNC21(ERROR, "cache lookup failed for text search dictionary %u",
				 dictId);
		dict = (Form_pg_ts_dict) FUNC5(tpdict);

		/*
		 * Sanity checks
		 */
		if (!FUNC15(dict->dicttemplate))
			FUNC21(ERROR, "text search dictionary %u has no template", dictId);

		/*
		 * Retrieve dictionary's template
		 */
		tptmpl = FUNC18(TSTEMPLATEOID,
								 FUNC13(dict->dicttemplate));
		if (!FUNC6(tptmpl))
			FUNC21(ERROR, "cache lookup failed for text search template %u",
				 dict->dicttemplate);
		template = (Form_pg_ts_template) FUNC5(tptmpl);

		/*
		 * Sanity checks
		 */
		if (!FUNC15(template->tmpllexize))
			FUNC21(ERROR, "text search template %u has no lexize method",
				 template->tmpllexize);

		if (entry == NULL)
		{
			bool		found;

			/* Now make the cache entry */
			entry = (TSDictionaryCacheEntry *)
				FUNC24(TSDictionaryCacheHash,
							(void *) &dictId,
							HASH_ENTER, &found);
			FUNC1(!found);		/* it wasn't there a moment ago */

			/* Create private memory context the first time through */
			saveCtx = FUNC0(CacheMemoryContext,
											"TS dictionary",
											ALLOCSET_SMALL_SIZES);
			FUNC8(saveCtx, FUNC12(dict->dictname));
		}
		else
		{
			/* Clear the existing entry's private context */
			saveCtx = entry->dictCtx;
			/* Don't let context's ident pointer dangle while we reset it */
			FUNC10(saveCtx, NULL);
			FUNC9(saveCtx);
			FUNC8(saveCtx, FUNC12(dict->dictname));
		}

		FUNC7(entry, 0, sizeof(TSDictionaryCacheEntry));
		entry->dictId = dictId;
		entry->dictCtx = saveCtx;

		entry->lexizeOid = template->tmpllexize;

		if (FUNC15(template->tmplinit))
		{
			List	   *dictoptions;
			Datum		opt;
			bool		isnull;
			MemoryContext oldcontext;

			/*
			 * Init method runs in dictionary's private memory context, and we
			 * make sure the options are stored there too
			 */
			oldcontext = FUNC11(entry->dictCtx);

			opt = FUNC19(TSDICTOID, tpdict,
								  Anum_pg_ts_dict_dictinitoption,
								  &isnull);
			if (isnull)
				dictoptions = NIL;
			else
				dictoptions = FUNC20(opt);

			entry->dictData =
				FUNC4(FUNC14(template->tmplinit,
												 FUNC16(dictoptions)));

			FUNC11(oldcontext);
		}

		FUNC17(tptmpl);
		FUNC17(tpdict);

		FUNC22(entry->lexizeOid, &entry->lexize, entry->dictCtx);

		entry->isvalid = true;
	}

	lastUsedDictionary = entry;

	return entry;
}