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
 int /*<<< orphan*/  ERRCODE_NAME_TOO_LONG ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*,int,int) ; 

void
FUNC5(char *ident, int len, bool warn)
{
	if (len >= NAMEDATALEN)
	{
		len = FUNC4(ident, len, NAMEDATALEN - 1);
		if (warn)
		{
			/*
			 * We avoid using %.*s here because it can misbehave if the data
			 * is not valid in what libc thinks is the prevailing encoding.
			 */
			char		buf[NAMEDATALEN];

			FUNC3(buf, ident, len);
			buf[len] = '\0';
			FUNC0(NOTICE,
					(FUNC1(ERRCODE_NAME_TOO_LONG),
					 FUNC2("identifier \"%s\" will be truncated to \"%s\"",
							ident, buf)));
		}
		ident[len] = '\0';
	}
}