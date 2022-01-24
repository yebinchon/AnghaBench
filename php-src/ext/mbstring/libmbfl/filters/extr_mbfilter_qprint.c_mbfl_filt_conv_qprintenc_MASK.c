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
 int MBFL_CHP_MMHQENC ; 
 int MBFL_QPRINT_STS_MIME_HEADER ; 
 int* mbfl_charprop_table ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(int c, mbfl_convert_filter *filter)
{
	int s, n;

	switch (filter->status & 0xff) {
	case 0:
		filter->cache = c;
		filter->status++;
		break;
	default:
		s = filter->cache;
		filter->cache = c;
		n = (filter->status & 0xff00) >> 8;

		if (s == 0) {		/* null */
			FUNC0((*filter->output_function)(s, filter->data));
			filter->status &= ~0xff00;
			break;
		}

		if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
			if (s == 0x0a || (s == 0x0d && c != 0x0a)) {	/* line feed */
				FUNC0((*filter->output_function)(0x0d, filter->data));		/* CR */
				FUNC0((*filter->output_function)(0x0a, filter->data));		/* LF */
				filter->status &= ~0xff00;
				break;
			} else if (s == 0x0d) {
				break;
			}
		}

		if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0  && n >= 72) {	/* soft line feed */
			FUNC0((*filter->output_function)(0x3d, filter->data));		/* '=' */
			FUNC0((*filter->output_function)(0x0d, filter->data));		/* CR */
			FUNC0((*filter->output_function)(0x0a, filter->data));		/* LF */
			filter->status &= ~0xff00;
		}

		if (s <= 0 || s >= 0x80 || s == 0x3d		/* not ASCII or '=' */
		   || ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) != 0 &&
		       (mbfl_charprop_table[s] & MBFL_CHP_MMHQENC) != 0)) {
			/* hex-octet */
			FUNC0((*filter->output_function)(0x3d, filter->data));		/* '=' */
			n = (s >> 4) & 0xf;
			if (n < 10) {
				n += 48;		/* '0' */
			} else {
				n += 55;		/* 'A' - 10 */
			}
			FUNC0((*filter->output_function)(n, filter->data));
			n = s & 0xf;
			if (n < 10) {
				n += 48;
			} else {
				n += 55;
			}
			FUNC0((*filter->output_function)(n, filter->data));
			if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
				filter->status += 0x300;
			}
		} else {
			FUNC0((*filter->output_function)(s, filter->data));
			if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
				filter->status += 0x100;
			}
		}
		break;
	}

	return c;
}