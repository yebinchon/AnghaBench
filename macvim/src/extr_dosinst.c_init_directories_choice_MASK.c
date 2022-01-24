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
struct stat {int dummy; } ;
struct TYPE_2__ {int active; int /*<<< orphan*/  installfunc; int /*<<< orphan*/  changefunc; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  change_directories_choice ; 
 size_t choice_count ; 
 TYPE_1__* choices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  install_vimfilesdir ; 
 int /*<<< orphan*/  installdir ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int vimfiles_dir_choice ; 
 scalar_t__ vimfiles_dir_home ; 
 scalar_t__ vimfiles_dir_none ; 
 scalar_t__ vimfiles_dir_vim ; 

__attribute__((used)) static void
FUNC8(void)
{
    struct stat	st;
    char	tmp_dirname[BUFSIZE];
    char	*p;

    choices[choice_count].text = FUNC0(150);
    choices[choice_count].changefunc = change_directories_choice;
    choices[choice_count].installfunc = install_vimfilesdir;
    choices[choice_count].active = 1;

    /* Check if the "compiler" directory already exists.  That's a good
     * indication that the plugin directories were already created. */
    if (FUNC2("HOME") != NULL)
    {
	vimfiles_dir_choice = (int)vimfiles_dir_home;
	FUNC4(tmp_dirname, "%s\\vimfiles\\compiler", FUNC2("HOME"));
	if (FUNC5(tmp_dirname, &st) == 0)
	    vimfiles_dir_choice = (int)vimfiles_dir_none;
    }
    else
    {
	vimfiles_dir_choice = (int)vimfiles_dir_vim;
	p = FUNC2("VIM");
	if (p == NULL) /* No $VIM in path, use the install dir */
	    FUNC1(installdir, tmp_dirname);
	else
	    FUNC7(tmp_dirname, p);
	FUNC6(tmp_dirname, "\\vimfiles\\compiler");
	if (FUNC5(tmp_dirname, &st) == 0)
	    vimfiles_dir_choice = (int)vimfiles_dir_none;
    }

    FUNC3(choice_count);
    ++choice_count;
}