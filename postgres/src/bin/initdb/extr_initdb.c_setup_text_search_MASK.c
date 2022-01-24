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
 char* FUNC0 (char*) ; 
 char* default_text_search_config ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lc_ctype ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

void
FUNC6(void)
{
	if (!default_text_search_config)
	{
		default_text_search_config = FUNC1(lc_ctype);
		if (!default_text_search_config)
		{
			FUNC2("could not find suitable text search configuration for locale \"%s\"",
						lc_ctype);
			default_text_search_config = "simple";
		}
	}
	else
	{
		const char *checkmatch = FUNC1(lc_ctype);

		if (checkmatch == NULL)
		{
			FUNC3("suitable text search configuration for locale \"%s\" is unknown",
						   lc_ctype);
		}
		else if (FUNC5(checkmatch, default_text_search_config) != 0)
		{
			FUNC3("specified text search configuration \"%s\" might not match locale \"%s\"",
						   default_text_search_config, lc_ctype);
		}
	}

	FUNC4(FUNC0("The default text search configuration will be set to \"%s\".\n"),
		   default_text_search_config);

}