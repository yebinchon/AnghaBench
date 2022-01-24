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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

PGresult *
FUNC4(Archive *fout, const char *query)
{
	PGresult   *res;
	int			ntups;

	res = FUNC0(fout, query, PGRES_TUPLES_OK);

	/* Expecting a single result only */
	ntups = FUNC1(res);
	if (ntups != 1)
		FUNC2(FUNC3("query returned %d row instead of one: %s",
					   "query returned %d rows instead of one: %s",
					   ntups),
			  ntups, query);

	return res;
}