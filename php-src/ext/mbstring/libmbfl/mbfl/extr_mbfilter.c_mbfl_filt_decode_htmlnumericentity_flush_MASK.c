#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct collector_htmlnumericentity_data {int status; int cache; int digit; TYPE_1__* decoder; } ;
typedef  int /*<<< orphan*/  mbfl_convert_filter ;
struct TYPE_14__ {int /*<<< orphan*/  (* filter_function ) (int,TYPE_1__*) ;} ;

/* Variables and functions */
 int* mbfl_hexchar_table ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 

int FUNC13(mbfl_convert_filter *filter)
{
	struct collector_htmlnumericentity_data *pc = (struct collector_htmlnumericentity_data *)filter;
	int n, s, r, d;

	if (pc->status) {
		switch (pc->status) {
		case 1: /* '&' */
			(*pc->decoder->filter_function)(0x26, pc->decoder);		/* '&' */
			break;
		case 2: /* '#' */
			(*pc->decoder->filter_function)(0x26, pc->decoder);		/* '&' */
			(*pc->decoder->filter_function)(0x23, pc->decoder);		/* '#' */
			break;
		case 3: /* '0'-'9' */
			(*pc->decoder->filter_function)(0x26, pc->decoder);		/* '&' */
			(*pc->decoder->filter_function)(0x23, pc->decoder);		/* '#' */

			s = pc->cache;
			r = 1;
			n = pc->digit;
			while (n > 0) {
				r *= 10;
				n--;
			}
			s %= r;
			r /= 10;
			while (r > 0) {
				d = s/r;
				s %= r;
				r /= 10;
				(*pc->decoder->filter_function)(mbfl_hexchar_table[d], pc->decoder);
			}

			break;
		case 4: /* 'x' */
			(*pc->decoder->filter_function)(0x26, pc->decoder);		/* '&' */
			(*pc->decoder->filter_function)(0x23, pc->decoder);		/* '#' */
			(*pc->decoder->filter_function)(0x78, pc->decoder);		/* 'x' */
			break;
		case 5: /* '0'-'9','a'-'f' */
			(*pc->decoder->filter_function)(0x26, pc->decoder);		/* '&' */
			(*pc->decoder->filter_function)(0x23, pc->decoder);		/* '#' */
			(*pc->decoder->filter_function)(0x78, pc->decoder);		/* 'x' */

			s = pc->cache;
			r = 1;
			n = pc->digit;
			while (n > 0) {
				r *= 16;
				n--;
			}
			s %= r;
			r /= 16;
			while (r > 0) {
				d = s/r;
				s %= r;
				r /= 16;
				(*pc->decoder->filter_function)(mbfl_hexchar_table[d], pc->decoder);
			}
			break;
		default:
			break;
		}
	}

	pc->status = 0;
	pc->cache = 0;
	pc->digit = 0;

	return 0;
}