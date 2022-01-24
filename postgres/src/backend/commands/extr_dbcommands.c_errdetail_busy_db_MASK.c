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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC2(int notherbackends, int npreparedxacts)
{
	if (notherbackends > 0 && npreparedxacts > 0)

		/*
		 * We don't deal with singular versus plural here, since gettext
		 * doesn't support multiple plurals in one string.
		 */
		FUNC0("There are %d other session(s) and %d prepared transaction(s) using the database.",
				  notherbackends, npreparedxacts);
	else if (notherbackends > 0)
		FUNC1("There is %d other session using the database.",
						 "There are %d other sessions using the database.",
						 notherbackends,
						 notherbackends);
	else
		FUNC1("There is %d prepared transaction using the database.",
						 "There are %d prepared transactions using the database.",
						 npreparedxacts,
						 npreparedxacts);
	return 0;					/* just to keep ereport macro happy */
}