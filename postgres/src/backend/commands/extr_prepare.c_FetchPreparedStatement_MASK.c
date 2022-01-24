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
typedef  int /*<<< orphan*/  PreparedStatement ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_PSTATEMENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ prepared_queries ; 

PreparedStatement *
FUNC4(const char *stmt_name, bool throwError)
{
	PreparedStatement *entry;

	/*
	 * If the hash table hasn't been initialized, it can't be storing
	 * anything, therefore it couldn't possibly store our plan.
	 */
	if (prepared_queries)
		entry = (PreparedStatement *) FUNC3(prepared_queries,
												  stmt_name,
												  HASH_FIND,
												  NULL);
	else
		entry = NULL;

	if (!entry && throwError)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_PSTATEMENT),
				 FUNC2("prepared statement \"%s\" does not exist",
						stmt_name)));

	return entry;
}