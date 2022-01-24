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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  vimfiles_dir_choice ; 
 int /*<<< orphan*/  vimfiles_dir_choices ; 

__attribute__((used)) static void
FUNC4(int idx)
{
    int	    choice_count = FUNC0(vimfiles_dir_choices);

    /* Don't offer the $HOME choice if $HOME isn't set. */
    if (FUNC2("HOME") == NULL)
	--choice_count;
    vimfiles_dir_choice = FUNC1(vimfiles_dir_choices, choice_count);
    FUNC3(idx);
}