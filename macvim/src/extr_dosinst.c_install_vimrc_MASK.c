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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ NUL ; 
#define  compat_all_enhancements 134 
 int compat_choice ; 
#define  compat_some_enhancements 133 
#define  compat_vi 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int mouse_choice ; 
#define  mouse_mswin 131 
#define  mouse_xterm 130 
 scalar_t__* oldvimrc ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int remap_choice ; 
#define  remap_no 129 
#define  remap_win 128 
 char* vimrc ; 

__attribute__((used)) static void
FUNC4(int idx)
{
    FILE	*fd, *tfd;
    char	*fname;

    /* If an old vimrc file exists, overwrite it.
     * Otherwise create a new one. */
    if (*oldvimrc != NUL)
	fname = oldvimrc;
    else
	fname = vimrc;

    fd = FUNC1(fname, "w");
    if (fd == NULL)
    {
	FUNC3("\nERROR: Cannot open \"%s\" for writing.\n", fname);
	return;
    }
    switch (compat_choice)
    {
	case compat_vi:
		    FUNC2(fd, "set compatible\n");
		    break;
	case compat_some_enhancements:
		    FUNC2(fd, "set nocompatible\n");
		    break;
	case compat_all_enhancements:
		    FUNC2(fd, "set nocompatible\n");
		    FUNC2(fd, "source $VIMRUNTIME/vimrc_example.vim\n");
		    break;
    }
    switch (remap_choice)
    {
	case remap_no:
		    break;
	case remap_win:
		    FUNC2(fd, "source $VIMRUNTIME/mswin.vim\n");
		    break;
    }
    switch (mouse_choice)
    {
	case mouse_xterm:
		    FUNC2(fd, "behave xterm\n");
		    break;
	case mouse_mswin:
		    FUNC2(fd, "behave mswin\n");
		    break;
    }
    if ((tfd = FUNC1("diff.exe", "r")) != NULL)
    {
	/* Use the diff.exe that comes with the self-extracting gvim.exe. */
	FUNC0(tfd);
	FUNC2(fd, "\n");
	FUNC2(fd, "set diffexpr=MyDiff()\n");
	FUNC2(fd, "function MyDiff()\n");
	FUNC2(fd, "  let opt = '-a --binary '\n");
	FUNC2(fd, "  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif\n");
	FUNC2(fd, "  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif\n");
	/* Use quotes only when needed, they may cause trouble. */
	FUNC2(fd, "  let arg1 = v:fname_in\n");
	FUNC2(fd, "  if arg1 =~ ' ' | let arg1 = '\"' . arg1 . '\"' | endif\n");
	FUNC2(fd, "  let arg2 = v:fname_new\n");
	FUNC2(fd, "  if arg2 =~ ' ' | let arg2 = '\"' . arg2 . '\"' | endif\n");
	FUNC2(fd, "  let arg3 = v:fname_out\n");
	FUNC2(fd, "  if arg3 =~ ' ' | let arg3 = '\"' . arg3 . '\"' | endif\n");

	/* If the path has a space:  When using cmd.exe (Win NT/2000/XP) put
	 * quotes around the diff command and rely on the default value of
         * shellxquote to solve the quoting problem for the whole command.
         *
	 * Otherwise put a double quote just before the space and at the
	 * end of the command.  Putting quotes around the whole thing
	 * doesn't work on Win 95/98/ME.  This is mostly guessed! */
	FUNC2(fd, "  if $VIMRUNTIME =~ ' '\n");
	FUNC2(fd, "    if &sh =~ '\\<cmd'\n");
	FUNC2(fd, "      if empty(&shellxquote)\n");
	FUNC2(fd, "        let l:shxq_sav = ''\n");
	FUNC2(fd, "        set shellxquote&\n");
	FUNC2(fd, "      endif\n");
	FUNC2(fd, "      let cmd = '\"' . $VIMRUNTIME . '\\diff\"'\n");
	FUNC2(fd, "    else\n");
	FUNC2(fd, "      let cmd = substitute($VIMRUNTIME, ' ', '\" ', '') . '\\diff\"'\n");
	FUNC2(fd, "    endif\n");
	FUNC2(fd, "  else\n");
	FUNC2(fd, "    let cmd = $VIMRUNTIME . '\\diff'\n");
	FUNC2(fd, "  endif\n");
	FUNC2(fd, "  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3\n");
	FUNC2(fd, "  if exists('l:shxq_sav')\n");
	FUNC2(fd, "    let &shellxquote=l:shxq_sav\n");
	FUNC2(fd, "  endif\n");
	FUNC2(fd, "endfunction\n");
	FUNC2(fd, "\n");
    }
    FUNC0(fd);
    FUNC3("%s has been written\n", fname);
}