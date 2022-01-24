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
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERRCODE_NAME_TOO_LONG ; 
 scalar_t__ NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

bool
FUNC5(const char *name, int elevel)
{
	const char *cp;

	if (FUNC4(name) == 0)
	{
		FUNC0(elevel,
				(FUNC1(ERRCODE_INVALID_NAME),
				 FUNC3("replication slot name \"%s\" is too short",
						name)));
		return false;
	}

	if (FUNC4(name) >= NAMEDATALEN)
	{
		FUNC0(elevel,
				(FUNC1(ERRCODE_NAME_TOO_LONG),
				 FUNC3("replication slot name \"%s\" is too long",
						name)));
		return false;
	}

	for (cp = name; *cp; cp++)
	{
		if (!((*cp >= 'a' && *cp <= 'z')
			  || (*cp >= '0' && *cp <= '9')
			  || (*cp == '_')))
		{
			FUNC0(elevel,
					(FUNC1(ERRCODE_INVALID_NAME),
					 FUNC3("replication slot name \"%s\" contains invalid character",
							name),
					 FUNC2("Replication slot names may only contain lower case letters, numbers, and the underscore character.")));
			return false;
		}
	}
	return true;
}