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
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  prompt ;

/* Variables and functions */
 char* PG_NOLETTER ; 
 char* PG_YESLETTER ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

bool
FUNC5(const char *question)
{
	char		prompt[256];

	/*------
	   translator: This is a question followed by the translated options for
	   "yes" and "no". */
	FUNC3(prompt, sizeof(prompt), FUNC0("%s (%s/%s) "),
			 FUNC0(question), FUNC0(PG_YESLETTER), FUNC0(PG_NOLETTER));

	for (;;)
	{
		char		resp[10];

		FUNC2(prompt, resp, sizeof(resp), true);

		if (FUNC4(resp, FUNC0(PG_YESLETTER)) == 0)
			return true;
		if (FUNC4(resp, FUNC0(PG_NOLETTER)) == 0)
			return false;

		FUNC1(FUNC0("Please answer \"%s\" or \"%s\".\n"),
			   FUNC0(PG_YESLETTER), FUNC0(PG_NOLETTER));
	}
}