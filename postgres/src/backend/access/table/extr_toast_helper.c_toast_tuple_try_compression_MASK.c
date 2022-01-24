#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ttc_flags; TYPE_2__* ttc_attr; int /*<<< orphan*/ * ttc_values; } ;
typedef  TYPE_1__ ToastTupleContext ;
struct TYPE_5__ {int tai_colflags; int /*<<< orphan*/  tai_size; } ;
typedef  TYPE_2__ ToastAttrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int TOASTCOL_INCOMPRESSIBLE ; 
 int TOASTCOL_NEEDS_FREE ; 
 int TOAST_NEEDS_CHANGE ; 
 int TOAST_NEEDS_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(ToastTupleContext *ttc, int attribute)
{
	Datum	   *value = &ttc->ttc_values[attribute];
	Datum		new_value = FUNC3(*value);
	ToastAttrInfo *attr = &ttc->ttc_attr[attribute];

	if (FUNC0(new_value) != NULL)
	{
		/* successful compression */
		if ((attr->tai_colflags & TOASTCOL_NEEDS_FREE) != 0)
			FUNC2(FUNC0(*value));
		*value = new_value;
		attr->tai_colflags |= TOASTCOL_NEEDS_FREE;
		attr->tai_size = FUNC1(FUNC0(*value));
		ttc->ttc_flags |= (TOAST_NEEDS_CHANGE | TOAST_NEEDS_FREE);
	}
	else
	{
		/* incompressible, ignore on subsequent compression passes */
		attr->tai_colflags |= TOASTCOL_INCOMPRESSIBLE;
	}
}