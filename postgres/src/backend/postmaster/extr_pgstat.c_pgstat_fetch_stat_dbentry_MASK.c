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
typedef  int /*<<< orphan*/  PgStat_StatDBEntry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pgStatDBHash ; 

PgStat_StatDBEntry *
FUNC2(Oid dbid)
{
	/*
	 * If not done for this transaction, read the statistics collector stats
	 * file into some hash tables.
	 */
	FUNC0();

	/*
	 * Lookup the requested database; return NULL if not found
	 */
	return (PgStat_StatDBEntry *) FUNC1(pgStatDBHash,
											  (void *) &dbid,
											  HASH_FIND, NULL);
}