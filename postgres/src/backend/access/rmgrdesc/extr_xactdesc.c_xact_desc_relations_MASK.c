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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  RelFileNode ;

/* Variables and functions */
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(StringInfo buf, char *label, int nrels,
					RelFileNode *xnodes)
{
	int		i;

	if (nrels > 0)
	{
		FUNC0(buf, "; %s:", label);
		for (i = 0; i < nrels; i++)
		{
			char	   *path = FUNC2(xnodes[i], MAIN_FORKNUM);

			FUNC0(buf, " %s", path);
			FUNC1(path);
		}
	}
}