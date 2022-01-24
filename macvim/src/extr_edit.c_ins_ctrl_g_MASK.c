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
struct TYPE_2__ {int /*<<< orphan*/  w_cursor; } ;

/* Variables and functions */
#define  Ctrl_J 131 
#define  Ctrl_K 130 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  Insstart ; 
#define  K_DOWN 129 
#define  K_UP 128 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ins_need_undo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_mapping ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_Insstart_orig ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6()
{
    int		c;

#ifdef FEAT_INS_EXPAND
    /* Right after CTRL-X the cursor will be after the ruler. */
    setcursor();
#endif

    /*
     * Don't map the second key. This also prevents the mode message to be
     * deleted when ESC is hit.
     */
    ++no_mapping;
    c = FUNC2();
    --no_mapping;
    switch (c)
    {
	/* CTRL-G k and CTRL-G <Up>: cursor up to Insstart.col */
	case K_UP:
	case Ctrl_K:
	case 'k': FUNC1(TRUE);
		  break;

	/* CTRL-G j and CTRL-G <Down>: cursor down to Insstart.col */
	case K_DOWN:
	case Ctrl_J:
	case 'j': FUNC0(TRUE);
		  break;

	/* CTRL-G u: start new undoable edit */
	case 'u': FUNC4(TRUE);
		  ins_need_undo = TRUE;

		  /* Need to reset Insstart, esp. because a BS that joins
		   * a line to the previous one must save for undo. */
		  update_Insstart_orig = FALSE;
		  Insstart = curwin->w_cursor;
		  break;

	/* Unknown CTRL-G command, reserved for future expansion. */
	default:  FUNC5();
    }
}