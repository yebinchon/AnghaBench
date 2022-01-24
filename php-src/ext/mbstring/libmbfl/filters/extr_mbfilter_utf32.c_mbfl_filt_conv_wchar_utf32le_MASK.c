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
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_WCSPLANE_UTF32MAX ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(int c, mbfl_convert_filter *filter)
{
	if (c >= 0 && c < MBFL_WCSPLANE_UTF32MAX) {
		FUNC0((*filter->output_function)(c & 0xff, filter->data));
		FUNC0((*filter->output_function)((c >> 8) & 0xff, filter->data));
		FUNC0((*filter->output_function)((c >> 16) & 0xff, filter->data));
		FUNC0((*filter->output_function)((c >> 24) & 0xff, filter->data));
	} else {
		FUNC0(FUNC1(c, filter));
	}

	return c;
}