#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mainwin; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  GdkWindow ;
typedef  int /*<<< orphan*/  GdkPixmap ;
typedef  int /*<<< orphan*/  GdkCursor ;
typedef  TYPE_1__ GdkColor ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 

__attribute__((used)) static GdkCursor *
FUNC4(void)
{
    GdkWindow	*root_window = NULL;
    GdkPixmap	*blank_mask;
    GdkCursor	*cursor;
    GdkColor	color = { 0, 0, 0, 0 };
    char	blank_data[] = { 0x0 };

#ifdef HAVE_GTK_MULTIHEAD
    root_window = gtk_widget_get_root_window(gui.mainwin);
#endif

    /* Create a pseudo blank pointer, which is in fact one pixel by one pixel
     * in size. */
    blank_mask = FUNC0(root_window, blank_data, 1, 1);
    cursor = FUNC2(blank_mask, blank_mask,
					&color, &color, 0, 0);
    FUNC1(blank_mask);

    return cursor;
}