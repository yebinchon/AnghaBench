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
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

int FUNC12(int c, mbfl_convert_filter *filter)
{
	if (c >= 0 && c < 0x110000) {
		if (c < 0x80) {
			FUNC0((*filter->output_function)(c, filter->data));
		} else if (c < 0x800) {
			FUNC0((*filter->output_function)(((c >> 6) & 0x1f) | 0xc0, filter->data));
			FUNC0((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
		} else if (c < 0x10000) {
			FUNC0((*filter->output_function)(((c >> 12) & 0x0f) | 0xe0, filter->data));
			FUNC0((*filter->output_function)(((c >> 6) & 0x3f) | 0x80, filter->data));
			FUNC0((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
		} else {
			FUNC0((*filter->output_function)(((c >> 18) & 0x07) | 0xf0, filter->data));
			FUNC0((*filter->output_function)(((c >> 12) & 0x3f) | 0x80, filter->data));
			FUNC0((*filter->output_function)(((c >> 6) & 0x3f) | 0x80, filter->data));
			FUNC0((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
		}
	} else {
		FUNC0(FUNC1(c, filter));
	}

	return c;
}