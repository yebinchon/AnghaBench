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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_5__ {int /*<<< orphan*/ * opts; } ;
struct TYPE_4__ {int attnum; int /*<<< orphan*/  attrelid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttributeOpts ;
typedef  TYPE_1__ AttoptCacheKey ;
typedef  TYPE_2__ AttoptCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  Anum_pg_attribute_attoptions ; 
 int /*<<< orphan*/  AttoptCacheHash ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

AttributeOpts *
FUNC14(Oid attrelid, int attnum)
{
	AttoptCacheKey key;
	AttoptCacheEntry *attopt;
	AttributeOpts *result;
	HeapTuple	tp;

	/* Find existing cache entry, if any. */
	if (!AttoptCacheHash)
		FUNC1();
	FUNC12(&key, 0, sizeof(key));	/* make sure any padding bits are unset */
	key.attrelid = attrelid;
	key.attnum = attnum;
	attopt =
		(AttoptCacheEntry *) FUNC10(AttoptCacheHash,
										 (void *) &key,
										 HASH_FIND,
										 NULL);

	/* Not found in Attopt cache.  Construct new cache entry. */
	if (!attopt)
	{
		AttributeOpts *opts;

		tp = FUNC6(ATTNUM,
							 FUNC4(attrelid),
							 FUNC2(attnum));

		/*
		 * If we don't find a valid HeapTuple, it must mean someone has
		 * managed to request attribute details for a non-existent attribute.
		 * We treat that case as if no options were specified.
		 */
		if (!FUNC0(tp))
			opts = NULL;
		else
		{
			Datum		datum;
			bool		isNull;

			datum = FUNC7(ATTNUM,
									tp,
									Anum_pg_attribute_attoptions,
									&isNull);
			if (isNull)
				opts = NULL;
			else
			{
				bytea	   *bytea_opts = FUNC9(datum, false);

				opts = FUNC3(CacheMemoryContext,
										  FUNC8(bytea_opts));
				FUNC11(opts, bytea_opts, FUNC8(bytea_opts));
			}
			FUNC5(tp);
		}

		/*
		 * It's important to create the actual cache entry only after reading
		 * pg_attribute, since the read could cause a cache flush.
		 */
		attopt = (AttoptCacheEntry *) FUNC10(AttoptCacheHash,
												  (void *) &key,
												  HASH_ENTER,
												  NULL);
		attopt->opts = opts;
	}

	/* Return results in caller's memory context. */
	if (attopt->opts == NULL)
		return NULL;
	result = FUNC13(FUNC8(attopt->opts));
	FUNC11(result, attopt->opts, FUNC8(attopt->opts));
	return result;
}