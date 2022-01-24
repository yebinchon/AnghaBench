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
struct TYPE_2__ {int /*<<< orphan*/  encoding; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 TYPE_1__ pset ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(const char *query)
{
	int			wordlen;

	/*
	 * First we must advance over any whitespace and comments.
	 */
	query = FUNC3(query);

	/*
	 * Check word length (since "beginx" is not "begin").
	 */
	wordlen = 0;
	while (FUNC1((unsigned char) query[wordlen]))
		wordlen += FUNC0(&query[wordlen], pset.encoding);

	/*
	 * Transaction control commands.  These should include every keyword that
	 * gives rise to a TransactionStmt in the backend grammar, except for the
	 * savepoint-related commands.
	 *
	 * (We assume that START must be START TRANSACTION, since there is
	 * presently no other "START foo" command.)
	 */
	if (wordlen == 5 && FUNC2(query, "abort", 5) == 0)
		return true;
	if (wordlen == 5 && FUNC2(query, "begin", 5) == 0)
		return true;
	if (wordlen == 5 && FUNC2(query, "start", 5) == 0)
		return true;
	if (wordlen == 6 && FUNC2(query, "commit", 6) == 0)
		return true;
	if (wordlen == 3 && FUNC2(query, "end", 3) == 0)
		return true;
	if (wordlen == 8 && FUNC2(query, "rollback", 8) == 0)
		return true;
	if (wordlen == 7 && FUNC2(query, "prepare", 7) == 0)
	{
		/* PREPARE TRANSACTION is a TC command, PREPARE foo is not */
		query += wordlen;

		query = FUNC3(query);

		wordlen = 0;
		while (FUNC1((unsigned char) query[wordlen]))
			wordlen += FUNC0(&query[wordlen], pset.encoding);

		if (wordlen == 11 && FUNC2(query, "transaction", 11) == 0)
			return true;
		return false;
	}

	/*
	 * Commands not allowed within transactions.  The statements checked for
	 * here should be exactly those that call PreventInTransactionBlock() in
	 * the backend.
	 */
	if (wordlen == 6 && FUNC2(query, "vacuum", 6) == 0)
		return true;
	if (wordlen == 7 && FUNC2(query, "cluster", 7) == 0)
	{
		/* CLUSTER with any arguments is allowed in transactions */
		query += wordlen;

		query = FUNC3(query);

		if (FUNC1((unsigned char) query[0]))
			return false;		/* has additional words */
		return true;			/* it's CLUSTER without arguments */
	}

	if (wordlen == 6 && FUNC2(query, "create", 6) == 0)
	{
		query += wordlen;

		query = FUNC3(query);

		wordlen = 0;
		while (FUNC1((unsigned char) query[wordlen]))
			wordlen += FUNC0(&query[wordlen], pset.encoding);

		if (wordlen == 8 && FUNC2(query, "database", 8) == 0)
			return true;
		if (wordlen == 10 && FUNC2(query, "tablespace", 10) == 0)
			return true;

		/* CREATE [UNIQUE] INDEX CONCURRENTLY isn't allowed in xacts */
		if (wordlen == 6 && FUNC2(query, "unique", 6) == 0)
		{
			query += wordlen;

			query = FUNC3(query);

			wordlen = 0;
			while (FUNC1((unsigned char) query[wordlen]))
				wordlen += FUNC0(&query[wordlen], pset.encoding);
		}

		if (wordlen == 5 && FUNC2(query, "index", 5) == 0)
		{
			query += wordlen;

			query = FUNC3(query);

			wordlen = 0;
			while (FUNC1((unsigned char) query[wordlen]))
				wordlen += FUNC0(&query[wordlen], pset.encoding);

			if (wordlen == 12 && FUNC2(query, "concurrently", 12) == 0)
				return true;
		}

		return false;
	}

	if (wordlen == 5 && FUNC2(query, "alter", 5) == 0)
	{
		query += wordlen;

		query = FUNC3(query);

		wordlen = 0;
		while (FUNC1((unsigned char) query[wordlen]))
			wordlen += FUNC0(&query[wordlen], pset.encoding);

		/* ALTER SYSTEM isn't allowed in xacts */
		if (wordlen == 6 && FUNC2(query, "system", 6) == 0)
			return true;

		return false;
	}

	/*
	 * Note: these tests will match DROP SYSTEM and REINDEX TABLESPACE, which
	 * aren't really valid commands so we don't care much. The other four
	 * possible matches are correct.
	 */
	if ((wordlen == 4 && FUNC2(query, "drop", 4) == 0) ||
		(wordlen == 7 && FUNC2(query, "reindex", 7) == 0))
	{
		query += wordlen;

		query = FUNC3(query);

		wordlen = 0;
		while (FUNC1((unsigned char) query[wordlen]))
			wordlen += FUNC0(&query[wordlen], pset.encoding);

		if (wordlen == 8 && FUNC2(query, "database", 8) == 0)
			return true;
		if (wordlen == 6 && FUNC2(query, "system", 6) == 0)
			return true;
		if (wordlen == 10 && FUNC2(query, "tablespace", 10) == 0)
			return true;
		if (wordlen == 5 && (FUNC2(query, "index", 5) == 0 ||
							 FUNC2(query, "table", 5) == 0))
		{
			query += wordlen;
			query = FUNC3(query);
			wordlen = 0;
			while (FUNC1((unsigned char) query[wordlen]))
				wordlen += FUNC0(&query[wordlen], pset.encoding);

			/*
			 * REINDEX [ TABLE | INDEX ] CONCURRENTLY are not allowed in
			 * xacts.
			 */
			if (wordlen == 12 && FUNC2(query, "concurrently", 12) == 0)
				return true;
		}

		/* DROP INDEX CONCURRENTLY isn't allowed in xacts */
		if (wordlen == 5 && FUNC2(query, "index", 5) == 0)
		{
			query += wordlen;

			query = FUNC3(query);

			wordlen = 0;
			while (FUNC1((unsigned char) query[wordlen]))
				wordlen += FUNC0(&query[wordlen], pset.encoding);

			if (wordlen == 12 && FUNC2(query, "concurrently", 12) == 0)
				return true;

			return false;
		}

		return false;
	}

	/* DISCARD ALL isn't allowed in xacts, but other variants are allowed. */
	if (wordlen == 7 && FUNC2(query, "discard", 7) == 0)
	{
		query += wordlen;

		query = FUNC3(query);

		wordlen = 0;
		while (FUNC1((unsigned char) query[wordlen]))
			wordlen += FUNC0(&query[wordlen], pset.encoding);

		if (wordlen == 3 && FUNC2(query, "all", 3) == 0)
			return true;
		return false;
	}

	return false;
}