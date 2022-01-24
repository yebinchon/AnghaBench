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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(PGresult *res)
{
	int			nFields;
	int			i,
				j;

	/* first, print out the attribute names */
	nFields = FUNC2(res);
	for (i = 0; i < nFields; i++)
		FUNC4("%-15s", FUNC0(res, i));
	FUNC4("\n\n");

	/* next, print out the rows */
	for (i = 0; i < FUNC3(res); i++)
	{
		for (j = 0; j < nFields; j++)
			FUNC4("%-15s", FUNC1(res, i, j));
		FUNC4("\n");
	}
}