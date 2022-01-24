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
struct TYPE_4__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* flush_function ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(mbfl_convert_filter *filter)
{
	int status, cache;

	status = filter->status;
	cache = filter->cache;

	filter->status = 0;
	filter->cache = 0;

	if (status != 0) {
		FUNC0(FUNC1(cache, filter));
	}

	if (filter->flush_function != NULL) {
		(*filter->flush_function)(filter->data);
	}
	return 0;
}