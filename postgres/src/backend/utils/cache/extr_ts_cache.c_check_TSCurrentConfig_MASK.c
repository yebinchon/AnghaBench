#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cfgname; int /*<<< orphan*/  cfgnamespace; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ GucSource ;
typedef  TYPE_1__* Form_pg_ts_config ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGC_S_TEST ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSCONFIGOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

bool
FUNC19(char **newval, void **extra, GucSource source)
{
	/*
	 * If we aren't inside a transaction, or connected to a database, we
	 * cannot do the catalog accesses necessary to verify the config name.
	 * Must accept it on faith.
	 */
	if (FUNC2() && MyDatabaseId != InvalidOid)
	{
		Oid			cfgId;
		HeapTuple	tuple;
		Form_pg_ts_config cfg;
		char	   *buf;

		cfgId = FUNC14(FUNC18(*newval), true);

		/*
		 * When source == PGC_S_TEST, don't throw a hard error for a
		 * nonexistent configuration, only a NOTICE.  See comments in guc.h.
		 */
		if (!FUNC5(cfgId))
		{
			if (source == PGC_S_TEST)
			{
				FUNC9(NOTICE,
						(FUNC10(ERRCODE_UNDEFINED_OBJECT),
						 FUNC11("text search configuration \"%s\" does not exist", *newval)));
				return true;
			}
			else
				return false;
		}

		/*
		 * Modify the actually stored value to be fully qualified, to ensure
		 * later changes of search_path don't affect it.
		 */
		tuple = FUNC7(TSCONFIGOID, FUNC4(cfgId));
		if (!FUNC1(tuple))
			FUNC8(ERROR, "cache lookup failed for text search configuration %u",
				 cfgId);
		cfg = (Form_pg_ts_config) FUNC0(tuple);

		buf = FUNC16(FUNC13(cfg->cfgnamespace),
										 FUNC3(cfg->cfgname));

		FUNC6(tuple);

		/* GUC wants it malloc'd not palloc'd */
		FUNC12(*newval);
		*newval = FUNC17(buf);
		FUNC15(buf);
		if (!*newval)
			return false;
	}

	return true;
}