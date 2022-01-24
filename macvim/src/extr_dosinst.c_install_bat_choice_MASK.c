#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t arg; } ;
struct TYPE_3__ {char* batpath; char* oldbat; char* exenamearg; char* exearg; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char NUL ; 
 char* VIM_VERSION_NODOT ; 
 TYPE_2__* choices ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* installdir ; 
 int need_uninstall_entry ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 TYPE_1__* targets ; 

__attribute__((used)) static void
FUNC4(int idx)
{
    char	*batpath = targets[choices[idx].arg].batpath;
    char	*oldname = targets[choices[idx].arg].oldbat;
    char	*exename = targets[choices[idx].arg].exenamearg;
    char	*vimarg = targets[choices[idx].arg].exearg;
    FILE	*fd;

    if (*batpath != NUL)
    {
	fd = FUNC1(batpath, "w");
	if (fd == NULL)
	    FUNC3("\nERROR: Cannot open \"%s\" for writing.\n", batpath);
	else
	{
	    need_uninstall_entry = 1;

	    FUNC2(fd, "@echo off\n");
	    FUNC2(fd, "rem -- Run Vim --\n");
	    FUNC2(fd, "\n");

	    /* Don't use double quotes for the "set" argument, also when it
	     * contains a space.  The quotes would be included in the value
	     * for MSDOS and NT.
	     * The order of preference is:
	     * 1. $VIMRUNTIME/vim.exe	    (user preference)
	     * 2. $VIM/vim70/vim.exe	    (hard coded version)
	     * 3. installdir/vim.exe	    (hard coded install directory)
	     */
	    FUNC2(fd, "set VIM_EXE_DIR=%s\n", installdir);
	    FUNC2(fd, "if exist \"%%VIM%%\\%s\\%s\" set VIM_EXE_DIR=%%VIM%%\\%s\n",
			       VIM_VERSION_NODOT, exename, VIM_VERSION_NODOT);
	    FUNC2(fd, "if exist \"%%VIMRUNTIME%%\\%s\" set VIM_EXE_DIR=%%VIMRUNTIME%%\n", exename);
	    FUNC2(fd, "\n");

	    /* Give an error message when the executable could not be found. */
	    FUNC2(fd, "if exist \"%%VIM_EXE_DIR%%\\%s\" goto havevim\n",
								     exename);
	    FUNC2(fd, "echo \"%%VIM_EXE_DIR%%\\%s\" not found\n", exename);
	    FUNC2(fd, "goto eof\n");
	    FUNC2(fd, "\n");
	    FUNC2(fd, ":havevim\n");

	    FUNC2(fd, "rem collect the arguments in VIMARGS for Win95\n");
	    FUNC2(fd, "set VIMARGS=\n");
	    if (*exename == 'g')
		FUNC2(fd, "set VIMNOFORK=\n");
	    FUNC2(fd, ":loopstart\n");
	    FUNC2(fd, "if .%%1==. goto loopend\n");
	    if (*exename == 'g')
	    {
		FUNC2(fd, "if NOT .%%1==.-f goto noforkarg\n");
		FUNC2(fd, "set VIMNOFORK=1\n");
		FUNC2(fd, ":noforkarg\n");
	    }
	    FUNC2(fd, "set VIMARGS=%%VIMARGS%% %%1\n");
	    FUNC2(fd, "shift\n");
	    FUNC2(fd, "goto loopstart\n");
	    FUNC2(fd, ":loopend\n");
	    FUNC2(fd, "\n");

	    FUNC2(fd, "if .%%OS%%==.Windows_NT goto ntaction\n");
	    FUNC2(fd, "\n");

	    /* For gvim.exe use "start" to avoid that the console window stays
	     * open. */
	    if (*exename == 'g')
	    {
		FUNC2(fd, "if .%%VIMNOFORK%%==.1 goto nofork\n");
		FUNC2(fd, "start ");
	    }

	    /* Always use quotes, $VIM or $VIMRUNTIME might have a space. */
	    FUNC2(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%VIMARGS%%\n",
							     exename, vimarg);
	    FUNC2(fd, "goto eof\n");
	    FUNC2(fd, "\n");

	    if (*exename == 'g')
	    {
		FUNC2(fd, ":nofork\n");
		FUNC2(fd, "start /w ");
		/* Always use quotes, $VIM or $VIMRUNTIME might have a space. */
		FUNC2(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%VIMARGS%%\n",
							     exename, vimarg);
		FUNC2(fd, "goto eof\n");
		FUNC2(fd, "\n");
	    }

	    FUNC2(fd, ":ntaction\n");
	    FUNC2(fd, "rem for WinNT we can use %%*\n");

	    /* For gvim.exe use "start /b" to avoid that the console window
	     * stays open. */
	    if (*exename == 'g')
	    {
		FUNC2(fd, "if .%%VIMNOFORK%%==.1 goto noforknt\n");
		FUNC2(fd, "start \"dummy\" /b ");
	    }

	    /* Always use quotes, $VIM or $VIMRUNTIME might have a space. */
	    FUNC2(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%*\n", exename, vimarg);
	    FUNC2(fd, "goto eof\n");
	    FUNC2(fd, "\n");

	    if (*exename == 'g')
	    {
		FUNC2(fd, ":noforknt\n");
		FUNC2(fd, "start \"dummy\" /b /wait ");
		/* Always use quotes, $VIM or $VIMRUNTIME might have a space. */
		FUNC2(fd, "\"%%VIM_EXE_DIR%%\\%s\" %s %%*\n",
							     exename, vimarg);
	    }

	    FUNC2(fd, "\n:eof\n");
	    FUNC2(fd, "set VIMARGS=\n");
	    if (*exename == 'g')
		FUNC2(fd, "set VIMNOFORK=\n");

	    FUNC0(fd);
	    FUNC3("%s has been %s\n", batpath,
				 oldname == NULL ? "created" : "overwritten");
	}
    }
}