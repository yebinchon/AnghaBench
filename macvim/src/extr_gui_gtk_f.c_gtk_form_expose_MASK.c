#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint ;
struct TYPE_19__ {TYPE_2__* data; struct TYPE_19__* next; } ;
struct TYPE_18__ {scalar_t__ window; int /*<<< orphan*/  area; int /*<<< orphan*/  region; } ;
struct TYPE_17__ {scalar_t__ bin_window; TYPE_5__* children; } ;
struct TYPE_16__ {TYPE_1__* widget; } ;
struct TYPE_15__ {scalar_t__ window; } ;
typedef  TYPE_1__ GtkWidget ;
typedef  TYPE_2__ GtkFormChild ;
typedef  TYPE_3__ GtkForm ;
typedef  TYPE_4__ GdkEventExpose ;
typedef  int /*<<< orphan*/  GdkEvent ;
typedef  TYPE_5__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gint
FUNC9(GtkWidget *widget, GdkEventExpose *event)
{
    GList   *tmp_list;
    GtkForm *form;

    FUNC4(FUNC1(widget), FALSE);

    form = FUNC0(widget);

    if (event->window == form->bin_window)
	return FALSE;

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
	GtkFormChild	*formchild = tmp_list->data;
	GtkWidget	*child	   = formchild->widget;
	/*
	 * The following chunk of code is taken from gtkcontainer.c.  The
	 * gtk1.x code synthesized expose events directly on the child widgets,
	 * which can't be done in gtk2
	 */
	if (FUNC2(child) && FUNC3(child)
		&& child->window == event->window)
	{
	    GdkEventExpose child_event;
	    child_event = *event;

	    child_event.region = FUNC7(child, event->region);
	    if (!FUNC5(child_event.region))
	    {
		FUNC6(child_event.region, &child_event.area);
		FUNC8(child, (GdkEvent *)&child_event);
	    }
	}
    }

    return FALSE;
}