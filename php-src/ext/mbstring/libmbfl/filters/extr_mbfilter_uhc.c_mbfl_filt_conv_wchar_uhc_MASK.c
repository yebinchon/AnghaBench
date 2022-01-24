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
 int MBFL_WCSPLANE_MASK ; 
 int MBFL_WCSPLANE_UHC ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int* ucs_a1_uhc_table ; 
 int ucs_a1_uhc_table_max ; 
 int ucs_a1_uhc_table_min ; 
 int* ucs_a2_uhc_table ; 
 int ucs_a2_uhc_table_max ; 
 int ucs_a2_uhc_table_min ; 
 int* ucs_a3_uhc_table ; 
 int ucs_a3_uhc_table_max ; 
 int ucs_a3_uhc_table_min ; 
 int* ucs_i_uhc_table ; 
 int ucs_i_uhc_table_max ; 
 int ucs_i_uhc_table_min ; 
 int* ucs_r1_uhc_table ; 
 int ucs_r1_uhc_table_max ; 
 int ucs_r1_uhc_table_min ; 
 int* ucs_r2_uhc_table ; 
 int ucs_r2_uhc_table_max ; 
 int ucs_r2_uhc_table_min ; 
 int* ucs_s_uhc_table ; 
 int ucs_s_uhc_table_max ; 
 int ucs_s_uhc_table_min ; 

int
FUNC5(int c, mbfl_convert_filter *filter)
{
	int c1, s;

	s = 0;
	if (c >= ucs_a1_uhc_table_min && c < ucs_a1_uhc_table_max) {
		s = ucs_a1_uhc_table[c - ucs_a1_uhc_table_min];
	} else if (c >= ucs_a2_uhc_table_min && c < ucs_a2_uhc_table_max) {
		s = ucs_a2_uhc_table[c - ucs_a2_uhc_table_min];
	} else if (c >= ucs_a3_uhc_table_min && c < ucs_a3_uhc_table_max) {
		s = ucs_a3_uhc_table[c - ucs_a3_uhc_table_min];
	} else if (c >= ucs_i_uhc_table_min && c < ucs_i_uhc_table_max) {
		s = ucs_i_uhc_table[c - ucs_i_uhc_table_min];
	} else if (c >= ucs_s_uhc_table_min && c < ucs_s_uhc_table_max) {
		s = ucs_s_uhc_table[c - ucs_s_uhc_table_min];
	} else if (c >= ucs_r1_uhc_table_min && c < ucs_r1_uhc_table_max) {
		s = ucs_r1_uhc_table[c - ucs_r1_uhc_table_min];
	} else if (c >= ucs_r2_uhc_table_min && c < ucs_r2_uhc_table_max) {
		s = ucs_r2_uhc_table[c - ucs_r2_uhc_table_min];
	}
	if (s <= 0) {
		c1 = c & ~MBFL_WCSPLANE_MASK;
		if (c1 == MBFL_WCSPLANE_UHC) {
			s = c & MBFL_WCSPLANE_MASK;
		}
		if (c == 0) {
			s = 0;
		} else if (s <= 0) {
			s = -1;
		}
	}
	if (s >= 0) {
		if (s < 0x80) {	/* latin */
			FUNC0((*filter->output_function)(s, filter->data));
		} else {
			FUNC0((*filter->output_function)((s >> 8) & 0xff, filter->data));
			FUNC0((*filter->output_function)(s & 0xff, filter->data));
		}
	} else {
		FUNC0(FUNC1(c, filter));
	}

	return c;
}