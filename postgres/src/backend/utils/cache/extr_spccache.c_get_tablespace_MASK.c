#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  TableSpaceOpts ;
struct TYPE_3__ {int /*<<< orphan*/ * opts; } ;
typedef  TYPE_1__ TableSpaceCacheEntry ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_tablespace_spcoptions ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TABLESPACEOID ; 
 int /*<<< orphan*/  TableSpaceCacheHash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static TableSpaceCacheEntry *
FUNC11(Oid spcid)
{
	TableSpaceCacheEntry *spc;
	HeapTuple	tp;
	TableSpaceOpts *opts;

	/*
	 * Since spcid is always from a pg_class tuple, InvalidOid implies the
	 * default.
	 */
	if (spcid == InvalidOid)
		spcid = MyDatabaseTableSpace;

	/* Find existing cache entry, if any. */
	if (!TableSpaceCacheHash)
		FUNC1();
	spc = (TableSpaceCacheEntry *) FUNC8(TableSpaceCacheHash,
											   (void *) &spcid,
											   HASH_FIND,
											   NULL);
	if (spc)
		return spc;

	/*
	 * Not found in TableSpace cache.  Check catcache.  If we don't find a
	 * valid HeapTuple, it must mean someone has managed to request tablespace
	 * details for a non-existent tablespace.  We'll just treat that case as
	 * if no options were specified.
	 */
	tp = FUNC5(TABLESPACEOID, FUNC3(spcid));
	if (!FUNC0(tp))
		opts = NULL;
	else
	{
		Datum		datum;
		bool		isNull;

		datum = FUNC6(TABLESPACEOID,
								tp,
								Anum_pg_tablespace_spcoptions,
								&isNull);
		if (isNull)
			opts = NULL;
		else
		{
			bytea	   *bytea_opts = FUNC10(datum, false);

			opts = FUNC2(CacheMemoryContext, FUNC7(bytea_opts));
			FUNC9(opts, bytea_opts, FUNC7(bytea_opts));
		}
		FUNC4(tp);
	}

	/*
	 * Now create the cache entry.  It's important to do this only after
	 * reading the pg_tablespace entry, since doing so could cause a cache
	 * flush.
	 */
	spc = (TableSpaceCacheEntry *) FUNC8(TableSpaceCacheHash,
											   (void *) &spcid,
											   HASH_ENTER,
											   NULL);
	spc->opts = opts;
	return spc;
}