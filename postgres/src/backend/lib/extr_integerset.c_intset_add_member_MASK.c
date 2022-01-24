#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_4__ {scalar_t__ highest_value; scalar_t__ num_entries; scalar_t__ num_buffered_values; scalar_t__* buffered_values; scalar_t__ iter_active; } ;
typedef  TYPE_1__ IntegerSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MAX_BUFFERED_VALUES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(IntegerSet *intset, uint64 x)
{
	if (intset->iter_active)
		FUNC1(ERROR, "cannot add new values to integer set while iteration is in progress");

	if (x <= intset->highest_value && intset->num_entries > 0)
		FUNC1(ERROR, "cannot add value to integer set out of order");

	if (intset->num_buffered_values >= MAX_BUFFERED_VALUES)
	{
		/* Time to flush our buffer */
		FUNC2(intset);
		FUNC0(intset->num_buffered_values < MAX_BUFFERED_VALUES);
	}

	/* Add it to the buffer of newly-added values */
	intset->buffered_values[intset->num_buffered_values] = x;
	intset->num_buffered_values++;
	intset->num_entries++;
	intset->highest_value = x;
}