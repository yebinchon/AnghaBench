#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gint ;
typedef  void* gboolean ;
struct TYPE_17__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_14__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_16__ {TYPE_1__ requisition; } ;
struct TYPE_15__ {scalar_t__ x; scalar_t__ y; TYPE_3__* widget; void* mapped; scalar_t__ window; } ;
typedef  TYPE_2__ GtkFormChild ;
typedef  TYPE_3__ GtkForm ;
typedef  TYPE_4__ GtkAllocation ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ G_MAXSHORT ; 
 scalar_t__ G_MINSHORT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC7(GtkForm *form, GtkFormChild *child,
			gboolean force_allocate)
{
    gint x;
    gint y;

    x = child->x;
    y = child->y;

    if ((x >= G_MINSHORT) && (x <= G_MAXSHORT) &&
	(y >= G_MINSHORT) && (y <= G_MAXSHORT))
    {
	if (!child->mapped)
	{
	    if (FUNC0(form) && FUNC2(child->widget))
	    {
		if (!FUNC0(child->widget))
		    FUNC4(child->widget);

		child->mapped = TRUE;
		force_allocate = TRUE;
	    }
	}

	if (force_allocate)
	{
	    GtkAllocation allocation;

	    if (FUNC1(child->widget))
	    {
		if (child->window)
		{
		    FUNC3(child->window,
			    x, y,
			    child->widget->requisition.width,
			    child->widget->requisition.height);
		}

		allocation.x = 0;
		allocation.y = 0;
	    }
	    else
	    {
		allocation.x = x;
		allocation.y = y;
	    }

	    allocation.width = child->widget->requisition.width;
	    allocation.height = child->widget->requisition.height;

	    FUNC5(child->widget, &allocation);
	}
    }
    else
    {
	if (child->mapped)
	{
	    child->mapped = FALSE;

	    if (FUNC0(child->widget))
		FUNC6(child->widget);
	}
    }
}