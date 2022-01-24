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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 

__attribute__((used)) static char *
FUNC2(const char *tabname, Oid namespaceId,
				List *colnames, List *exclusionOpNames,
				bool primary, bool isconstraint)
{
	char	   *indexname;

	if (primary)
	{
		/* the primary key's name does not depend on the specific column(s) */
		indexname = FUNC1(tabname,
									   NULL,
									   "pkey",
									   namespaceId,
									   true);
	}
	else if (exclusionOpNames != NIL)
	{
		indexname = FUNC1(tabname,
									   FUNC0(colnames),
									   "excl",
									   namespaceId,
									   true);
	}
	else if (isconstraint)
	{
		indexname = FUNC1(tabname,
									   FUNC0(colnames),
									   "key",
									   namespaceId,
									   true);
	}
	else
	{
		indexname = FUNC1(tabname,
									   FUNC0(colnames),
									   "idx",
									   namespaceId,
									   false);
	}

	return indexname;
}