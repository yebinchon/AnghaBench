#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int gint ;
struct TYPE_28__ {TYPE_3__* data; struct TYPE_28__* next; } ;
struct TYPE_27__ {int /*<<< orphan*/  event_mask; scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  colormap; int /*<<< orphan*/  visual; int /*<<< orphan*/  wclass; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  window_type; } ;
struct TYPE_26__ {TYPE_6__* children; void* bin_window; } ;
struct TYPE_25__ {int /*<<< orphan*/  widget; } ;
struct TYPE_23__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_24__ {void* window; int /*<<< orphan*/  style; TYPE_1__ allocation; } ;
typedef  TYPE_2__ GtkWidget ;
typedef  TYPE_3__ GtkFormChild ;
typedef  TYPE_4__ GtkForm ;
typedef  TYPE_5__ GdkWindowAttr ;
typedef  TYPE_6__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_INPUT_OUTPUT ; 
 int /*<<< orphan*/  GDK_VISIBILITY_NOTIFY_MASK ; 
 int GDK_WA_COLORMAP ; 
 int GDK_WA_VISUAL ; 
 int GDK_WA_X ; 
 int GDK_WA_Y ; 
 int /*<<< orphan*/  GDK_WINDOW_CHILD ; 
 TYPE_4__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  GTK_REALIZED ; 
 int /*<<< orphan*/  GTK_STATE_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 void* FUNC6 (void*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  gtk_form_filter ; 
 int /*<<< orphan*/  gtk_form_main_filter ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 void* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC17(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;
    GdkWindowAttr attributes;
    gint attributes_mask;

    FUNC4(FUNC1(widget));

    form = FUNC0(widget);
    FUNC2(form, GTK_REALIZED);

    attributes.window_type = GDK_WINDOW_CHILD;
    attributes.x = widget->allocation.x;
    attributes.y = widget->allocation.y;
    attributes.width = widget->allocation.width;
    attributes.height = widget->allocation.height;
    attributes.wclass = GDK_INPUT_OUTPUT;
    attributes.visual = FUNC16(widget);
    attributes.colormap = FUNC13(widget);
    attributes.event_mask = GDK_VISIBILITY_NOTIFY_MASK;

    attributes_mask = GDK_WA_X | GDK_WA_Y | GDK_WA_VISUAL | GDK_WA_COLORMAP;

    widget->window = FUNC6(FUNC15(widget),
				    &attributes, attributes_mask);
    FUNC7(widget->window, widget);

    attributes.x = 0;
    attributes.y = 0;
    attributes.event_mask = FUNC14(widget);

    form->bin_window = FUNC6(widget->window,
				      &attributes, attributes_mask);
    FUNC7(form->bin_window, widget);

    FUNC10(form->bin_window, TRUE);

    widget->style = FUNC11(widget->style, widget->window);
    FUNC12(widget->style, widget->window, GTK_STATE_NORMAL);
    FUNC12(widget->style, form->bin_window, GTK_STATE_NORMAL);

    FUNC5(widget->window, gtk_form_main_filter, form);
    FUNC5(form->bin_window, gtk_form_filter, form);

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
	GtkFormChild *child = tmp_list->data;

	FUNC8(form, child);

	if (FUNC3(child->widget))
	    FUNC9(form, child);
    }
}