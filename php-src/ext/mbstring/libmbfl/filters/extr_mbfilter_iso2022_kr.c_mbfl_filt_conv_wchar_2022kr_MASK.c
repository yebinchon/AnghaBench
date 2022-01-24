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
struct TYPE_4__ {int status; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_WCSPLANE_KSC5601 ; 
 int MBFL_WCSPLANE_MASK ; 
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
FUNC11(int c, mbfl_convert_filter *filter)
{
	int c1, c2, s;

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

	c1 = (s >> 8) & 0xff;
	c2 = s & 0xff;
	/* exclude UHC extension area */
	if (c1 < 0xa1 || c2 < 0xa1){
		s = c;
	}
	if (s & 0x8000) {
		s -= 0x8080;
	}

	if (s <= 0) {
		c1 = c & ~MBFL_WCSPLANE_MASK;
		if (c1 == MBFL_WCSPLANE_KSC5601) {
			s = c & MBFL_WCSPLANE_MASK;
		}
		if (c == 0) {
			s = 0;
		} else if (s <= 0) {
			s = -1;
		}
	} else if ((s >= 0x80 && s < 0x2121) || (s > 0x8080)) {
		s = -1;
	}
	if (s >= 0) {
		if (s < 0x80 && s > 0) {	/* ASCII */
			if ((filter->status & 0x10) != 0) {
				FUNC0((*filter->output_function)(0x0f, filter->data));		/* SI */
				filter->status &= ~0x10;
			}
			FUNC0((*filter->output_function)(s, filter->data));
		} else {
			if ( (filter->status & 0x100) == 0) {
				FUNC0((*filter->output_function)(0x1b, filter->data));		/* ESC */
				FUNC0((*filter->output_function)(0x24, filter->data));		/* '$' */
				FUNC0((*filter->output_function)(0x29, filter->data));		/* ')' */
				FUNC0((*filter->output_function)(0x43, filter->data));		/* 'C' */
				filter->status |= 0x100;
			}
			if ((filter->status & 0x10) == 0) {
				FUNC0((*filter->output_function)(0x0e, filter->data));		/* SO */
				filter->status |= 0x10;
			}
			FUNC0((*filter->output_function)((s >> 8) & 0xff, filter->data));
			FUNC0((*filter->output_function)(s & 0xff, filter->data));
		}
	} else {
		FUNC0(FUNC1(c, filter));
	}

	return c;
}