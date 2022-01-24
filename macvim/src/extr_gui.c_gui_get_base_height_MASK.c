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
struct TYPE_2__ {int border_offset; scalar_t__ footer_height; scalar_t__ tabline_height; scalar_t__ toolbar_height; scalar_t__ menu_height; scalar_t__ menu_is_active; scalar_t__ scrollbar_height; scalar_t__* which_scrollbars; } ;

/* Variables and functions */
 int /*<<< orphan*/  GO_FOOTER ; 
 int /*<<< orphan*/  GO_TOOLBAR ; 
 size_t SBAR_BOTTOM ; 
 scalar_t__ TOOLBAR_BORDER_HEIGHT ; 
 scalar_t__ TOOLBAR_BUTTON_HEIGHT ; 
 TYPE_1__ gui ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  p_go ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3()
{
    int	    base_height;

    base_height = 2 * gui.border_offset;
    if (gui.which_scrollbars[SBAR_BOTTOM])
	base_height += gui.scrollbar_height;
#ifdef FEAT_GUI_GTK
    /* We can't take the sizes properly into account until anything is
     * realized.  Therefore we recalculate all the values here just before
     * setting the size. (--mdcki) */
#elif !defined(FEAT_GUI_MACVIM)
# ifdef FEAT_MENU
    if (gui.menu_is_active)
	base_height += gui.menu_height;
# endif
# ifdef FEAT_TOOLBAR
    if (vim_strchr(p_go, GO_TOOLBAR) != NULL)
#  if defined(FEAT_GUI_MSWIN) && defined(FEAT_TOOLBAR)
	base_height += (TOOLBAR_BUTTON_HEIGHT + TOOLBAR_BORDER_HEIGHT);
#  else
	base_height += gui.toolbar_height;
#  endif
# endif
# if defined(FEAT_GUI_TABLINE) && (defined(FEAT_GUI_MSWIN) \
	|| defined(FEAT_GUI_MOTIF))
    if (gui_has_tabline())
	base_height += gui.tabline_height;
# endif
# ifdef FEAT_FOOTER
    if (vim_strchr(p_go, GO_FOOTER) != NULL)
	base_height += gui.footer_height;
# endif
# if defined(FEAT_GUI_MOTIF) && defined(FEAT_MENU)
    base_height += gui_mch_text_area_extra_height();
# endif
#endif
    return base_height;
}