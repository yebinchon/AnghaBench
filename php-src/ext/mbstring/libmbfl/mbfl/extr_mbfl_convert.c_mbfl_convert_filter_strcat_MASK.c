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
struct TYPE_4__ {scalar_t__ (* filter_function ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_1__*) ; 

int FUNC1(mbfl_convert_filter *filter, const unsigned char *p)
{
	int c;

	while ((c = *p++) != '\0') {
		if ((*filter->filter_function)(c, filter) < 0) {
			return -1;
		}
	}

	return 0;
}