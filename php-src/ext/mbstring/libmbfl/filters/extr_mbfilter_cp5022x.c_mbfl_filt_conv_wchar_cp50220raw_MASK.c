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
struct TYPE_4__ {int status; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int const,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_WCSPLANE_JIS0208 ; 
 int MBFL_WCSPLANE_MASK ; 
 int FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int const,int /*<<< orphan*/ ) ; 

int
FUNC7(int c, mbfl_convert_filter *filter)
{
	if (c & MBFL_WCSPLANE_JIS0208) {
		const int s = c & MBFL_WCSPLANE_MASK;

		if ((filter->status & 0xff00) != 0x200) {
			FUNC0((*filter->output_function)(0x1b, filter->data));		/* ESC */
			FUNC0((*filter->output_function)(0x24, filter->data));		/* '$' */
			FUNC0((*filter->output_function)(0x42, filter->data));		/* 'B' */
			filter->status = 0x200;
		}
		FUNC0((*filter->output_function)((s >> 8) & 0x7f, filter->data));
		FUNC0((*filter->output_function)(s & 0x7f, filter->data));
		return c;
	} else {
		return FUNC1(c, filter);
	}
}