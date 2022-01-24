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
struct TYPE_3__ {scalar_t__ execs; int lineno; char const* connection; int /*<<< orphan*/ * stmtID; int /*<<< orphan*/  ecpgQuery; } ;
typedef  TYPE_1__ stmtCacheEntry ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int stmtCacheArraySize ; 
 int stmtCacheEntPerBucket ; 
 TYPE_1__* stmtCacheEntries ; 

__attribute__((used)) static int
FUNC5(int lineno,		/* line # of statement */
			   const char *stmtID,	/* statement ID */
			   const char *connection,	/* connection */
			   int compat,		/* compatibility level */
			   const char *ecpgQuery)	/* query */
{
	int			ix,
				initEntNo,
				luEntNo,
				entNo;
	stmtCacheEntry *entry;

	/* allocate and zero cache array if we haven't already */
	if (stmtCacheEntries == NULL)
	{
		stmtCacheEntries = (stmtCacheEntry *)
			FUNC1(sizeof(stmtCacheEntry) * stmtCacheArraySize, lineno);
		if (stmtCacheEntries == NULL)
			return -1;
	}

	/* hash the statement */
	initEntNo = FUNC0(ecpgQuery);

	/* search for an unused entry */
	entNo = initEntNo;			/* start with the initial entry # for the
								 * bucket */
	luEntNo = initEntNo;		/* use it as the initial 'least used' entry */
	for (ix = 0; ix < stmtCacheEntPerBucket; ++ix)
	{
		entry = &stmtCacheEntries[entNo];
		if (!entry->stmtID[0])	/* unused entry  -	use it */
			break;
		if (entry->execs < stmtCacheEntries[luEntNo].execs)
			luEntNo = entNo;	/* save new 'least used' entry */
		++entNo;				/* increment entry # */
	}

	/*
	 * if no unused entries were found, re-use the 'least used' entry found in
	 * the bucket
	 */
	if (ix >= stmtCacheEntPerBucket)
		entNo = luEntNo;

	/* 'entNo' is the entry to use - make sure its free */
	if (FUNC2(lineno, compat, entNo) < 0)
		return -1;

	/* add the query to the entry */
	entry = &stmtCacheEntries[entNo];
	entry->lineno = lineno;
	entry->ecpgQuery = FUNC3(ecpgQuery, lineno);
	entry->connection = connection;
	entry->execs = 0;
	FUNC4(entry->stmtID, stmtID, sizeof(entry->stmtID));

	return entNo;
}