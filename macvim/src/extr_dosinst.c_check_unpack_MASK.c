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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 char* VIM_VERSION_NODOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int has_gvim ; 
 int has_vim ; 
 char* installdir ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int runtimeidx ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
    char	buf[BUFSIZE];
    FILE	*fd;
    struct stat	st;

    /* check for presence of the correct version number in installdir[] */
    runtimeidx = FUNC7(installdir) - FUNC7(VIM_VERSION_NODOT);
    if (runtimeidx <= 0
	    || FUNC6(installdir + runtimeidx, VIM_VERSION_NODOT) != 0
	    || (installdir[runtimeidx - 1] != '/'
		&& installdir[runtimeidx - 1] != '\\'))
    {
	FUNC3("ERROR: Install program not in directory \"%s\"\n",
		VIM_VERSION_NODOT);
	FUNC3("This program can only work when it is located in its original directory\n");
	FUNC2(1);
    }

    /* check if filetype.vim is present, which means the runtime archive has
     * been unpacked  */
    FUNC4(buf, "%s\\filetype.vim", installdir);
    if (FUNC5(buf, &st) < 0)
    {
	FUNC3("ERROR: Cannot find filetype.vim in \"%s\"\n", installdir);
	FUNC3("It looks like you did not unpack the runtime archive.\n");
	FUNC3("You must unpack the runtime archive \"vim%srt.zip\" before installing.\n",
		VIM_VERSION_NODOT + 3);
	FUNC2(1);
    }

    /* Check if vim.exe or gvim.exe is in the current directory. */
    if ((fd = FUNC1("gvim.exe", "r")) != NULL)
    {
	FUNC0(fd);
	has_gvim = 1;
    }
    if ((fd = FUNC1("vim.exe", "r")) != NULL)
    {
	FUNC0(fd);
	has_vim = 1;
    }
    if (!has_gvim && !has_vim)
    {
	FUNC3("ERROR: Cannot find any Vim executables in \"%s\"\n\n",
								  installdir);
	FUNC2(1);
    }
}