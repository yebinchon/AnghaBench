#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_4__ {TYPE_1__* mainwin; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  GIOChannel ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int G_IO_ERR ; 
 int G_IO_HUP ; 
 int G_IO_IN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  local_xsmp_handle_requests ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  save_yourself_atom ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int xsmp_icefd ; 

__attribute__((used)) static void
FUNC11(void)
{
    Atom    *existing_atoms = NULL;
    int	    count = 0;

#ifdef USE_XSMP
    if (xsmp_icefd != -1)
    {
	/*
	 * Use XSMP is preference to legacy WM_SAVE_YOURSELF;
	 * set up GTK IO monitor
	 */
	GIOChannel *g_io = g_io_channel_unix_new(xsmp_icefd);

	g_io_add_watch(g_io, G_IO_IN | G_IO_ERR | G_IO_HUP,
				  local_xsmp_handle_requests, (gpointer)g_io);
    }
    else
#endif
    {
	/* Fall back to old method */

	/* first get the existing value */
	if (FUNC4(FUNC0(gui.mainwin->window),
		    FUNC1(gui.mainwin->window),
		    &existing_atoms, &count))
	{
	    Atom	*new_atoms;
	    Atom	save_yourself_xatom;
	    int	i;

	    save_yourself_xatom = FUNC2(save_yourself_atom);

	    /* check if WM_SAVE_YOURSELF isn't there yet */
	    for (i = 0; i < count; ++i)
		if (existing_atoms[i] == save_yourself_xatom)
		    break;

	    if (i == count)
	    {
		/* allocate an Atoms array which is one item longer */
		new_atoms = (Atom *)FUNC6((unsigned)((count + 1)
							     * sizeof(Atom)));
		if (new_atoms != NULL)
		{
		    FUNC9(new_atoms, existing_atoms, count * sizeof(Atom));
		    new_atoms[count] = save_yourself_xatom;
		    FUNC5(FUNC0(gui.mainwin->window),
			    FUNC1(gui.mainwin->window),
			    new_atoms, count + 1);
		    FUNC10(new_atoms);
		}
	    }
	    FUNC3(existing_atoms);
	}
    }
}