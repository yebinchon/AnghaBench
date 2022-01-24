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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,size_t) ; 
 size_t FUNC3 (char const*) ; 

bool
FUNC4(const char *value, const char *name, bool *result)
{
	size_t		len;
	bool		valid = true;

	/* Treat "unset" as an empty string, which will lead to error below */
	if (value == NULL)
		value = "";

	len = FUNC3(value);

	if (len > 0 && FUNC2(value, "true", len) == 0)
		*result = true;
	else if (len > 0 && FUNC2(value, "false", len) == 0)
		*result = false;
	else if (len > 0 && FUNC2(value, "yes", len) == 0)
		*result = true;
	else if (len > 0 && FUNC2(value, "no", len) == 0)
		*result = false;
	/* 'o' is not unique enough */
	else if (FUNC2(value, "on", (len > 2 ? len : 2)) == 0)
		*result = true;
	else if (FUNC2(value, "off", (len > 2 ? len : 2)) == 0)
		*result = false;
	else if (FUNC1(value, "1") == 0)
		*result = true;
	else if (FUNC1(value, "0") == 0)
		*result = false;
	else
	{
		/* string is not recognized; don't clobber *result */
		if (name)
			FUNC0("unrecognized value \"%s\" for \"%s\": Boolean expected",
						 value, name);
		valid = false;
	}
	return valid;
}