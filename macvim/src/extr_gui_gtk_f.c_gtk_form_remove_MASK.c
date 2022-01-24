#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__* data; } ;
struct TYPE_12__ {TYPE_3__* children; } ;
struct TYPE_11__ {scalar_t__ window; int /*<<< orphan*/ * widget; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_1__ GtkFormChild ;
typedef  TYPE_2__ GtkForm ;
typedef  int /*<<< orphan*/  GtkContainer ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gtk_form_child_map ; 
 int /*<<< orphan*/  gtk_form_child_unmap ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(GtkContainer *container, GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;
    GtkFormChild *child = NULL;	    /* init for gcc */

    FUNC7(FUNC1(container));

    form = FUNC0(container);

    tmp_list = form->children;
    while (tmp_list)
    {
	child = tmp_list->data;
	if (child->widget == widget)
	    break;
	tmp_list = tmp_list->next;
    }

    if (tmp_list)
    {
	if (child->window)
	{
	    FUNC10(FUNC2(child->widget),
					  FUNC3(&gtk_form_child_map), child);
	    FUNC10(FUNC2(child->widget),
					  FUNC3(&gtk_form_child_unmap), child);

	    /* FIXME: This will cause problems for reparenting NO_WINDOW
	     * widgets out of a GtkForm
	     */
	    FUNC9(child->window, NULL);
	    FUNC8(child->window);
	}
	FUNC11(widget);

	form->children = FUNC6(form->children, tmp_list);
	FUNC5(tmp_list);
	FUNC4(child);
    }
}