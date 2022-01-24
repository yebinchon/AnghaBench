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
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

void
FUNC6(const char *name)
{
	char	   *envstr;

	if (FUNC0(name) == NULL)
		return;					/* no work */

	/*
	 * The technique embodied here works if libc follows the Single Unix Spec
	 * and actually uses the storage passed to putenv() to hold the environ
	 * entry.  When we clobber the entry in the second step we are ensuring
	 * that we zap the actual environ member.  However, there are some libc
	 * implementations (notably recent BSDs) that do not obey SUS but copy the
	 * presented string.  This method fails on such platforms.  Hopefully all
	 * such platforms have unsetenv() and thus won't be using this hack. See:
	 * http://www.greenend.org.uk/rjk/2008/putenv.html
	 *
	 * Note that repeatedly setting and unsetting a var using this code will
	 * leak memory.
	 */

	envstr = (char *) FUNC1(FUNC5(name) + 2);
	if (!envstr)				/* not much we can do if no memory */
		return;

	/* Override the existing setting by forcibly defining the var */
	FUNC3(envstr, "%s=", name);
	FUNC2(envstr);

	/* Now we can clobber the variable definition this way: */
	FUNC4(envstr, "=");

	/*
	 * This last putenv cleans up if we have multiple zero-length names as a
	 * result of unsetting multiple things.
	 */
	FUNC2(envstr);
}