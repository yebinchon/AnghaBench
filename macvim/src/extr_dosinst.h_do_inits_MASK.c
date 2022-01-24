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
 int /*<<< orphan*/  BUFSIZE ; 
 scalar_t__ NUL ; 
 scalar_t__* FUNC0 (char*) ; 
 int /*<<< orphan*/  installdir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* sysdrive ; 

__attribute__((used)) static void
FUNC7(char **argv)
{
#ifdef DJGPP
    /*
     * Use Long File Names by default, if $LFN not set.
     */
    if (getenv("LFN") == NULL)
	putenv("LFN=y");
#endif

    /* Find out the full path of our executable. */
    if (FUNC2(installdir, argv[0], BUFSIZE) == NULL)
    {
	FUNC4("ERROR: Cannot get name of executable\n");
	FUNC3(1);
    }
    /* remove the tail, the executable name "install.exe" */
    FUNC6(installdir);

    /* change to the installdir */
    FUNC1(installdir);

    /* Find the system drive.  Only used for searching the Vim executable, not
     * very important. */
    sysdrive = FUNC0("SYSTEMDRIVE");
    if (sysdrive == NULL || *sysdrive == NUL)
	sysdrive = "C:\\";
}