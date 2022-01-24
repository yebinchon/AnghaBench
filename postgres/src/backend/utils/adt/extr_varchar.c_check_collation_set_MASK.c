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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INDETERMINATE_COLLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(Oid collid)
{
	if (!FUNC0(collid))
	{
		/*
		 * This typically means that the parser could not resolve a conflict
		 * of implicit collations, so report it that way.
		 */
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INDETERMINATE_COLLATION),
				 FUNC4("could not determine which collation to use for string comparison"),
				 FUNC3("Use the COLLATE clause to set the collation explicitly.")));
	}
}