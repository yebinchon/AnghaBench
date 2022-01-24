#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  TrgmPackedGraph ;
typedef  int /*<<< orphan*/  TRGM ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int REG_ADVANCED ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

TRGM *
FUNC9(text *text_re, Oid collation,
			  TrgmPackedGraph **graph, MemoryContext rcontext)
{
	TRGM	   *trg;
	regex_t		regex;
	MemoryContext tmpcontext;
	MemoryContext oldcontext;

	/*
	 * This processing generates a great deal of cruft, which we'd like to
	 * clean up before returning (since this function may be called in a
	 * query-lifespan memory context).  Make a temp context we can work in so
	 * that cleanup is easy.
	 */
	tmpcontext = FUNC0(CurrentMemoryContext,
									   "createTrgmNFA temporary context",
									   ALLOCSET_DEFAULT_SIZES);
	oldcontext = FUNC2(tmpcontext);

	/*
	 * Stage 1: Compile the regexp into a NFA, using the regexp library.
	 */
#ifdef IGNORECASE
	RE_compile(&regex, text_re, REG_ADVANCED | REG_ICASE, collation);
#else
	FUNC6(&regex, text_re, REG_ADVANCED, collation);
#endif

	/*
	 * Since the regexp library allocates its internal data structures with
	 * malloc, we need to use a PG_TRY block to ensure that pg_regfree() gets
	 * done even if there's an error.
	 */
	FUNC5();
	{
		trg = FUNC7(&regex, graph, rcontext);
	}
	FUNC4();
	{
		FUNC8(&regex);
	}
	FUNC3();

	/* Clean up all the cruft we created */
	FUNC2(oldcontext);
	FUNC1(tmpcontext);

	return trg;
}