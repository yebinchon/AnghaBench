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
 scalar_t__ FALSE ; 
 int ICON_COUNT ; 
 scalar_t__ TRUE ; 
 char* VIM_STARTMENU ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char** icon_link_names ; 
 char** icon_names ; 
 scalar_t__ interactive ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC18 (char*,struct stat*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int
FUNC21(int argc, char *argv[])
{
    int		found = 0;
    FILE	*fd;
#ifdef WIN3264
    int		i;
    struct stat st;
    char	icon[BUFSIZE];
    char	path[BUFSIZE];
    char	popup_path[BUFSIZE];

    /* The nsis uninstaller calls us with a "-nsis" argument. */
    if (argc == 2 && stricmp(argv[1], "-nsis") == 0)
	interactive = FALSE;
    else
#endif
	interactive = TRUE;

    /* Initialize this program. */
    FUNC2(argv);

    FUNC9("This program will remove the following items:\n");

#ifdef WIN3264
    if (popup_gvim_path(popup_path))
    {
	printf(" - the \"Edit with Vim\" entry in the popup menu\n");
	printf("   which uses \"%s\"\n", popup_path);
	if (interactive)
	    printf("\nRemove it (y/n)? ");
	if (!interactive || confirm())
	{
	    remove_popup();
	    /* Assume the "Open With" entry can be removed as well, don't
	     * bother the user with asking him again. */
	    remove_openwith();
	}
    }
    else if (openwith_gvim_path(popup_path))
    {
	printf(" - the Vim \"Open With...\" entry in the popup menu\n");
	printf("   which uses \"%s\"\n", popup_path);
	printf("\nRemove it (y/n)? ");
	if (confirm())
	    remove_openwith();
    }

    if (get_shell_folder_path(path, "desktop"))
    {
	printf("\n");
	for (i = 0; i < ICON_COUNT; ++i)
	{
	    sprintf(icon, "%s\\%s", path, icon_link_names[i]);
	    if (stat(icon, &st) == 0)
	    {
		printf(" - the \"%s\" icon on the desktop\n", icon_names[i]);
		++found;
	    }
	}
	if (found > 0)
	{
	    if (interactive)
		printf("\nRemove %s (y/n)? ", found > 1 ? "them" : "it");
	    if (!interactive || confirm())
		remove_icons();
	}
    }

    if (get_shell_folder_path(path, VIM_STARTMENU)
	    && stat(path, &st) == 0)
    {
	printf("\n - the \"%s\" entry in the Start Menu\n", VIM_STARTMENU);
	if (interactive)
	    printf("\nRemove it (y/n)? ");
	if (!interactive || confirm())
	    remove_start_menu();
    }
#endif

    FUNC9("\n");
    found = FUNC10(0);
    if (found > 0)
    {
	if (interactive)
	    FUNC9("\nRemove %s (y/n)? ", found > 1 ? "them" : "it");
	if (!interactive || FUNC0())
	    FUNC10(1);
    }

    fd = FUNC4("gvim.exe", "r");
    if (fd != NULL)
    {
	FUNC3(fd);
	FUNC9("gvim.exe detected.  Attempting to unregister gvim with OLE\n");
	FUNC20("gvim.exe -silent -unregister");
    }

    FUNC1();

    if (interactive)
    {
	FUNC9("\nYou may now want to delete the Vim executables and runtime files.\n");
	FUNC9("(They are still where you unpacked them.)\n");
    }

    if (interactive)
    {
	FUNC15(stdin);
	FUNC9("\nPress Enter to exit...");
	(void)FUNC6();
    }
    else
	FUNC16(3);

    return 0;
}