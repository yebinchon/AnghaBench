#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* filter_function ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_WCSPLANE_SUPMAX ; 
 int MBFL_WCSPLANE_SUPMIN ; 
 int MBFL_WCSPLANE_UCS2MAX ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int* mbfl_utf7imap_base64_table ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ) ; 

int FUNC26(int c, mbfl_convert_filter *filter)
{
	int n, s;

	n = 0;
	if (c == 0x26) {
		n = 1;
	} else if ((c >= 0x20 && c <= 0x7e) || c == 0) {
		n = 2;
	} else if (c >= 0 && c < MBFL_WCSPLANE_UCS2MAX) {
		;
	} else if (c >= MBFL_WCSPLANE_SUPMIN && c < MBFL_WCSPLANE_SUPMAX) {
		s = ((c >> 10) - 0x40) | 0xd800;
		FUNC0((*filter->filter_function)(s, filter));
		s = (c & 0x3ff) | 0xdc00;
		FUNC0((*filter->filter_function)(s, filter));
		return c;
	} else {
		FUNC0(FUNC1(c, filter));
		return c;
	}

	switch (filter->status) {
	case 0:
		if (n != 0) {	/* directly encode characters */
			FUNC0((*filter->output_function)(c, filter->data));
			if (n == 1) {
				FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			}
		} else {	/* Modified Base64 */
			FUNC0((*filter->output_function)(0x26, filter->data));		/* '&' */
			filter->status = 1;
			filter->cache = c;
		}
		break;

	/* encode Modified Base64 */
	case 1:
		s = filter->cache;
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 10) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 4) & 0x3f], filter->data));
		if (n != 0) {
			FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s << 2) & 0x3c], filter->data));
			FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			FUNC0((*filter->output_function)(c, filter->data));
			if (n == 1) {
				FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			}
			filter->status = 0;
		} else {
			filter->status = 2;
			filter->cache = ((s & 0xf) << 16) | c;
		}
		break;

	case 2:
		s = filter->cache;
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 14) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 8) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 2) & 0x3f], filter->data));
		if (n != 0) {
			FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s << 4) & 0x30], filter->data));
			FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			FUNC0((*filter->output_function)(c, filter->data));
			if (n == 1) {
				FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			}
			filter->status = 0;
		} else {
			filter->status = 3;
			filter->cache = ((s & 0x3) << 16) | c;
		}
		break;

	case 3:
		s = filter->cache;
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 12) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 6) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[s & 0x3f], filter->data));
		if (n != 0) {
			FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			FUNC0((*filter->output_function)(c, filter->data));
			if (n == 1) {
				FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
			}
			filter->status = 0;
		} else {
			filter->status = 1;
			filter->cache = c;
		}
		break;

	default:
		filter->status = 0;
		break;
	}

	return c;

}