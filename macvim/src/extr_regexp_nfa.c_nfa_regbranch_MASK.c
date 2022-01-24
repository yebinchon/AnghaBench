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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAIL ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  NFA_CONCAT ; 
 int /*<<< orphan*/  NFA_EMPTY ; 
 int /*<<< orphan*/  NFA_NOPEN ; 
 int /*<<< orphan*/  NFA_PREV_ATOM_NO_WIDTH ; 
 int OK ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ post_ptr ; 
 scalar_t__ post_start ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5()
{
    int		ch;
    int		old_post_pos;

    old_post_pos = (int)(post_ptr - post_start);

    /* First branch, possibly the only one */
    if (FUNC2() == FAIL)
	return FAIL;

    ch = FUNC3();
    /* Try next concats */
    while (ch == FUNC1('&'))
    {
	FUNC4();
	FUNC0(NFA_NOPEN);
	FUNC0(NFA_PREV_ATOM_NO_WIDTH);
	old_post_pos = (int)(post_ptr - post_start);
	if (FUNC2() == FAIL)
	    return FAIL;
	/* if concat is empty do emit a node */
	if (old_post_pos == (int)(post_ptr - post_start))
	    FUNC0(NFA_EMPTY);
	FUNC0(NFA_CONCAT);
	ch = FUNC3();
    }

    /* if a branch is empty, emit one node for it */
    if (old_post_pos == (int)(post_ptr - post_start))
	FUNC0(NFA_EMPTY);

    return OK;
}