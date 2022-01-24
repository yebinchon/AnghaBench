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
 int BUFSIZE ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  installdir ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int vimfiles_dir_choice ; 
#define  vimfiles_dir_home 130 
#define  vimfiles_dir_none 129 
#define  vimfiles_dir_vim 128 
 char** vimfiles_subdirs ; 

__attribute__((used)) static void
FUNC7(int idx)
{
    int i;
    char *p;
    char vimdir_path[BUFSIZE];
    char vimfiles_path[BUFSIZE];
    char tmp_dirname[BUFSIZE];

    /* switch on the location that the user wants the plugin directories
     * built in */
    switch (vimfiles_dir_choice)
    {
	case vimfiles_dir_vim:
	{
	    /* Go to the %VIM% directory - check env first, then go one dir
	     *	   below installdir if there is no %VIM% environment variable.
	     *	   The accuracy of $VIM is checked in inspect_system(), so we
	     *	   can be sure it is ok to use here. */
	    p = FUNC2("VIM");
	    if (p == NULL) /* No $VIM in path */
		FUNC1(installdir, vimdir_path);
	    else
		FUNC5(vimdir_path, p);
	    break;
	}
	case vimfiles_dir_home:
	{
	    /* Find the $HOME directory.  Its existence was already checked. */
	    p = FUNC2("HOME");
	    if (p == NULL)
	    {
		FUNC3("Internal error: $HOME is NULL\n");
		p = "c:\\";
	    }
	    FUNC5(vimdir_path, p);
	    break;
	}
	case vimfiles_dir_none:
	{
	    /* Do not create vim plugin directory */
	    return;
	}
    }

    /* Now, just create the directory.	If it already exists, it will fail
     * silently.  */
    FUNC4(vimfiles_path, "%s\\vimfiles", vimdir_path);
    FUNC6(vimfiles_path, 0755);

    FUNC3("Creating the following directories in \"%s\":\n", vimfiles_path);
    for (i = 0; i < FUNC0(vimfiles_subdirs); i++)
    {
	FUNC4(tmp_dirname, "%s\\%s", vimfiles_path, vimfiles_subdirs[i]);
	FUNC3("  %s", vimfiles_subdirs[i]);
	FUNC6(tmp_dirname, 0755);
    }
    FUNC3("\n");
}