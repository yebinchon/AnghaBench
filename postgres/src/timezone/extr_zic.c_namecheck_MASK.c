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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const*,char const*) ; 
 scalar_t__ noise ; 
 scalar_t__ FUNC2 (char const*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,unsigned char) ; 

__attribute__((used)) static bool
FUNC4(const char *name)
{
	char const *cp;

	/* Benign characters in a portable file name.  */
	static char const benign[] =
	"-/_"
	"abcdefghijklmnopqrstuvwxyz"
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	/*
	 * Non-control chars in the POSIX portable character set, excluding the
	 * benign characters.
	 */
	static char const printable_and_not_benign[] =
	" !\"#$%&'()*+,.0123456789:;<=>?@[\\]^`{|}~";

	char const *component = name;

	for (cp = name; *cp; cp++)
	{
		unsigned char c = *cp;

		if (noise && !FUNC2(benign, c))
		{
			FUNC3((FUNC2(printable_and_not_benign, c)
					 ? FUNC0("file name '%s' contains byte '%c'")
					 : FUNC0("file name '%s' contains byte '\\%o'")),
					name, c);
		}
		if (c == '/')
		{
			if (!FUNC1(name, component, cp))
				return false;
			component = cp + 1;
		}
	}
	return FUNC1(name, component, cp);
}