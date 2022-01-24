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
 int MBFL_WCSPLANE_KOI8U ; 
 int MBFL_WCSPLANE_MASK ; 
 int* koi8u_ucs_table ; 
 int koi8u_ucs_table_len ; 
 int koi8u_ucs_table_min ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int
FUNC3(int c, mbfl_convert_filter *filter)
{
	int s, n;

	if (c < 0x80) {
		s = c;
	} else {
		s = -1;
		n = koi8u_ucs_table_len-1;
		while (n >= 0) {
			if (c == koi8u_ucs_table[n]) {
				s = koi8u_ucs_table_min + n;
				break;
			}
			n--;
		}
		if (s <= 0 && (c & ~MBFL_WCSPLANE_MASK) == MBFL_WCSPLANE_KOI8U) {
			s = c & MBFL_WCSPLANE_MASK;
		}
	}

	if (s >= 0) {
		FUNC0((*filter->output_function)(s, filter->data));
	} else {
		FUNC0(FUNC1(c, filter));
	}

	return c;
}