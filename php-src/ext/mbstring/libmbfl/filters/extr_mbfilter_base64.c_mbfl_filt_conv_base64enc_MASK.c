#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_BASE64_STS_MIME_HEADER ; 
 int* mbfl_base64_table ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(int c, mbfl_convert_filter *filter)
{
	int n;

	n = (filter->status & 0xff);
	if (n == 0) {
		filter->status++;
		filter->cache = (c & 0xff) << 16;
	} else if (n == 1) {
		filter->status++;
		filter->cache |= (c & 0xff) << 8;
	} else {
		filter->status &= ~0xff;
		if ((filter->status & MBFL_BASE64_STS_MIME_HEADER) == 0) {
			n = (filter->status & 0xff00) >> 8;
			if (n > 72) {
				FUNC0((*filter->output_function)(0x0d, filter->data));		/* CR */
				FUNC0((*filter->output_function)(0x0a, filter->data));		/* LF */
				filter->status &= ~0xff00;
			}
			filter->status += 0x400;
		}
		n = filter->cache | (c & 0xff);
		FUNC0((*filter->output_function)(mbfl_base64_table[(n >> 18) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_base64_table[(n >> 12) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_base64_table[(n >> 6) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_base64_table[n & 0x3f], filter->data));
	}

	return c;
}