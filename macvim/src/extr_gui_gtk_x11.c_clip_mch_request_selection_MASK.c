#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  guint32 ;
struct TYPE_8__ {int /*<<< orphan*/  gtk_sel_atom; } ;
typedef  TYPE_2__ VimClipboard ;
struct TYPE_10__ {TYPE_1__* mainwin; int /*<<< orphan*/  drawarea; } ;
struct TYPE_9__ {scalar_t__ info; int /*<<< orphan*/  target; } ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  GdkAtom ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int N_SELECTION_TARGETS ; 
 scalar_t__ RS_FAIL ; 
 scalar_t__ RS_NONE ; 
 scalar_t__ TARGET_HTML ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  clip_html ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ gui ; 
 scalar_t__ received_selection ; 
 TYPE_4__* selection_targets ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC6(VimClipboard *cbd)
{
    GdkAtom	target;
    unsigned	i;
    time_t	start;

    for (i = 0; i < N_SELECTION_TARGETS; ++i)
    {
	if (!clip_html && selection_targets[i].info == TARGET_HTML)
	    continue;
	received_selection = RS_NONE;
	target = FUNC2(selection_targets[i].target, FALSE);

	FUNC3(gui.drawarea,
			      cbd->gtk_sel_atom, target,
			      (guint32)GDK_CURRENT_TIME);

	/* Hack: Wait up to three seconds for the selection.  A hang was
	 * noticed here when using the netrw plugin combined with ":gui"
	 * during the FocusGained event. */
	start = FUNC4(NULL);
	while (received_selection == RS_NONE && FUNC4(NULL) < start + 3)
	    FUNC1(NULL, TRUE);	/* wait for selection_received_cb */

	if (received_selection != RS_FAIL)
	    return;
    }

    /* Final fallback position - use the X CUT_BUFFER0 store */
    FUNC5(FUNC0(gui.mainwin->window), cbd);
}