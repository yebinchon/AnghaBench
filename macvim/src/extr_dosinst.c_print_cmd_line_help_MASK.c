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

__attribute__((used)) static void
FUNC1(void)
{
    FUNC0("Vim installer non-interactive command line arguments:\n");
    FUNC0("\n");
    FUNC0("-create-batfiles  [vim gvim evim view gview vimdiff gvimdiff]\n");
    FUNC0("    Create .bat files for Vim variants in the Windows directory.\n");
    FUNC0("-create-vimrc\n");
    FUNC0("    Create a default _vimrc file if one does not already exist.\n");
    FUNC0("-install-popup\n");
    FUNC0("    Install the Edit-with-Vim context menu entry\n");
    FUNC0("-install-openwith\n");
    FUNC0("    Add Vim to the \"Open With...\" context menu list\n");
#ifdef WIN3264
    printf("-add-start-menu");
    printf("    Add Vim to the start menu\n");
    printf("-install-icons");
    printf("    Create icons for gVim executables on the desktop\n");
#endif
    FUNC0("-create-directories [vim|home]\n");
    FUNC0("    Create runtime directories to drop plugins into; in the $VIM\n");
    FUNC0("    or $HOME directory\n");
#ifdef WIN3264
    printf("-register-OLE");
    printf("    Ignored\n");
#endif
    FUNC0("\n");
}