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
struct TYPE_2__ {char* exenamearg; char* name; } ;

/* Variables and functions */
 int TARGET_COUNT ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ has_gvim ; 
 scalar_t__ has_vim ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 TYPE_1__* targets ; 
 int vimfiles_dir_choice ; 
 scalar_t__ vimfiles_dir_home ; 
 scalar_t__ vimfiles_dir_vim ; 

__attribute__((used)) static void
FUNC11(int argc, char **argv)
{
    int i, j;

    for (i = 1; i < argc; i++)
    {
	if (FUNC10(argv[i], "-create-batfiles") == 0)
	{
	    if (i + 1 == argc)
		continue;
	    while (argv[i + 1][0] != '-' && i < argc)
	    {
		i++;
		for (j = 1; j < TARGET_COUNT; ++j)
		    if ((targets[j].exenamearg[0] == 'g' ? has_gvim : has_vim)
			    && FUNC10(argv[i], targets[j].name) == 0)
		    {
			FUNC1(j);
			break;
		    }
		if (j == TARGET_COUNT)
		    FUNC9("%s is not a valid choice for -create-batfiles\n",
								     argv[i]);

		if (i + 1 == argc)
		    break;
	    }
	}
	else if (FUNC10(argv[i], "-create-vimrc") == 0)
	{
	    /* Setup default vimrc choices.  If there is already a _vimrc file,
	     * it will NOT be overwritten.
	     */
	    FUNC7();
	}
	else if (FUNC10(argv[i], "-install-popup") == 0)
	{
	    FUNC4();
	}
	else if (FUNC10(argv[i], "-install-openwith") == 0)
	{
	    FUNC3();
	}
	else if (FUNC10(argv[i], "-add-start-menu") == 0)
	{
	    FUNC6();
	}
	else if (FUNC10(argv[i], "-install-icons") == 0)
	{
	    FUNC5();
	}
	else if (FUNC10(argv[i], "-create-directories") == 0)
	{
	    FUNC2();
	    if (argv[i + 1][0] != '-')
	    {
		i++;
		if (FUNC10(argv[i], "vim") == 0)
		    vimfiles_dir_choice = (int)vimfiles_dir_vim;
		else if (FUNC10(argv[i], "home") == 0)
		{
		    if (FUNC0("HOME") == NULL) /* No $HOME in environment */
			vimfiles_dir_choice = (int)vimfiles_dir_vim;
		    else
			vimfiles_dir_choice = (int)vimfiles_dir_home;
		}
		else
		{
		    FUNC9("Unknown argument for -create-directories: %s\n",
								     argv[i]);
		    FUNC8();
		}
	    }
	    else /* No choice specified, default to vim directory */
		vimfiles_dir_choice = (int)vimfiles_dir_vim;
	}
#ifdef WIN3264
	else if (strcmp(argv[i], "-register-OLE") == 0)
	{
	    /* This is always done when gvim is found */
	}
#endif
	else /* Unknown switch */
	{
	    FUNC9("Got unknown argument argv[%d] = %s\n", i, argv[i]);
	    FUNC8();
	}
    }
}