#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* oldexe; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FALSE ; 
 char NUL ; 
 int TARGET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 char* installdir ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* oldvimrc ; 
 scalar_t__ FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int runtimeidx ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 TYPE_1__* targets ; 

__attribute__((used)) static void
FUNC9(void)
{
    char	*p;
    char	buf[BUFSIZE];
    FILE	*fd;
    int		i;
    int		foundone;

    /* This may take a little while, let the user know what we're doing. */
    FUNC7("Inspecting system...\n");

    /*
     * If $VIM is set, check that it's pointing to our directory.
     */
    p = FUNC4("VIM");
    if (p != NULL && FUNC6(p, -1, installdir, runtimeidx - 1) != 0)
    {
	FUNC7("------------------------------------------------------\n");
	FUNC7("$VIM is set to \"%s\".\n", p);
	FUNC7("This is different from where this version of Vim is:\n");
	FUNC8(buf, installdir);
	*(buf + runtimeidx - 1) = NUL;
	FUNC7("\"%s\"\n", buf);
	FUNC7("You must adjust or remove the setting of $VIM,\n");
	if (interactive)
	{
	    FUNC7("to be able to use this install program.\n");
	    FUNC5(1);
	}
	FUNC7("otherwise Vim WILL NOT WORK properly!\n");
	FUNC7("------------------------------------------------------\n");
    }

    /*
     * If $VIMRUNTIME is set, check that it's pointing to our runtime directory.
     */
    p = FUNC4("VIMRUNTIME");
    if (p != NULL && FUNC6(p, -1, installdir, -1) != 0)
    {
	FUNC7("------------------------------------------------------\n");
	FUNC7("$VIMRUNTIME is set to \"%s\".\n", p);
	FUNC7("This is different from where this version of Vim is:\n");
	FUNC7("\"%s\"\n", installdir);
	FUNC7("You must adjust or remove the setting of $VIMRUNTIME,\n");
	if (interactive)
	{
	    FUNC7("to be able to use this install program.\n");
	    FUNC5(1);
	}
	FUNC7("otherwise Vim WILL NOT WORK properly!\n");
	FUNC7("------------------------------------------------------\n");
    }

    /*
     * Check if there is a vim.[exe|bat|, gvim.[exe|bat|, etc. in the path.
     */
    FUNC1(FALSE);

    /*
     * A .exe in the install directory may be found anyway on Windows 2000.
     * Check for this situation and find another executable if necessary.
     * w.briscoe@ponl.com 2001-01-20
     */
    foundone = 0;
    for (i = 1; i < TARGET_COUNT; ++i)
    {
	FUNC2(&(targets[i].oldexe));
	if (targets[i].oldexe != NULL)
	    foundone = 1;
    }

    if (foundone)
    {
	FUNC7("Warning: Found Vim executable(s) in your $PATH:\n");
	for (i = 1; i < TARGET_COUNT; ++i)
	    if (targets[i].oldexe != NULL)
		FUNC7("%s\n", targets[i].oldexe);
	FUNC7("It will be used instead of the version you are installing.\n");
	FUNC7("Please delete or rename it, or adjust your $PATH setting.\n");
    }

    /*
     * Check if there is an existing ../_vimrc or ../.vimrc file.
     */
    FUNC8(oldvimrc, installdir);
    FUNC8(oldvimrc + runtimeidx, "_vimrc");
    if ((fd = FUNC3(oldvimrc, "r")) == NULL)
    {
	FUNC8(oldvimrc + runtimeidx, "vimrc~1"); /* short version of .vimrc */
	if ((fd = FUNC3(oldvimrc, "r")) == NULL)
	{
	    FUNC8(oldvimrc + runtimeidx, ".vimrc");
	    fd = FUNC3(oldvimrc, "r");
	}
    }
    if (fd != NULL)
	FUNC0(fd);
    else
	*oldvimrc = NUL;
}