#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;TYPE_1__* from; } ;
typedef  TYPE_2__ mbfl_convert_filter ;
struct TYPE_5__ {int /*<<< orphan*/  no_encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,int*) ; 
 int FUNC4 (int,int*) ; 
 int /*<<< orphan*/  mbfl_docomo2uni_pua ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  mbfl_kddi2uni_pua ; 
 int /*<<< orphan*/  mbfl_kddi2uni_pua_b ; 
 int /*<<< orphan*/  mbfl_no_encoding_utf8_docomo ; 
 int /*<<< orphan*/  mbfl_no_encoding_utf8_kddi_a ; 
 int /*<<< orphan*/  mbfl_no_encoding_utf8_kddi_b ; 
 int /*<<< orphan*/  mbfl_no_encoding_utf8_sb ; 
 int /*<<< orphan*/  mbfl_sb2uni_pua ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(int c, mbfl_convert_filter *filter)
{
	int s, s1 = 0, c1 = 0, snd = 0;

retry:
	switch (filter->status & 0xff) {
	case 0x00:
		if (c < 0x80) {
			FUNC0((*filter->output_function)(c, filter->data));
		} else if (c >= 0xc2 && c <= 0xdf) { /* 2byte code first char: 0xc2-0xdf */
			filter->status = 0x10;
			filter->cache = c & 0x1f;
		} else if (c >= 0xe0 && c <= 0xef) { /* 3byte code first char: 0xe0-0xef */
			filter->status = 0x20;
			filter->cache = c & 0xf;
		} else if (c >= 0xf0 && c <= 0xf4) { /* 3byte code first char: 0xf0-0xf4 */
			filter->status = 0x30;
			filter->cache = c & 0x7;
		} else {
			FUNC0(FUNC5(c, filter));
		}
		break;
	case 0x10: /* 2byte code 2nd char: 0x80-0xbf */
	case 0x21: /* 3byte code 3rd char: 0x80-0xbf */
	case 0x32: /* 4byte code 4th char: 0x80-0xbf */
		filter->status = 0;
		if (c >= 0x80 && c <= 0xbf) {
			s = (filter->cache<<6) | (c & 0x3f);
			filter->cache = 0;

			if (filter->from->no_encoding == mbfl_no_encoding_utf8_docomo &&
				FUNC1(s, &s1, mbfl_docomo2uni_pua, 4) > 0) {
				s = FUNC2(s1, &snd);
			} else if (filter->from->no_encoding == mbfl_no_encoding_utf8_kddi_a &&
					   FUNC1(s, &s1, mbfl_kddi2uni_pua, 7) > 0) {
				s = FUNC3(s1, &snd);
			} else if (filter->from->no_encoding == mbfl_no_encoding_utf8_kddi_b &&
					   FUNC1(s, &s1, mbfl_kddi2uni_pua_b, 8) > 0) {
				s = FUNC3(s1, &snd);
			} else if (filter->from->no_encoding == mbfl_no_encoding_utf8_sb &&
					   FUNC1(s, &s1, mbfl_sb2uni_pua, 6) > 0) {
				s = FUNC4(s1, &snd);
			}

			if (snd > 0) {
				FUNC0((*filter->output_function)(snd, filter->data));
			}
			FUNC0((*filter->output_function)(s, filter->data));
		} else {
			FUNC0(FUNC5(filter->cache, filter));
			goto retry;
		}
		break;
	case 0x20: /* 3byte code 2nd char: 0:0xa0-0xbf,D:0x80-9F,1-C,E-F:0x80-0x9f */
		s = (filter->cache<<6) | (c & 0x3f);
		c1 = filter->cache & 0xf;

		if ((c >= 0x80 && c <= 0xbf) &&
			((c1 == 0x0 && c >= 0xa0) ||
			 (c1 == 0xd && c < 0xa0) ||
			 (c1 > 0x0 && c1 != 0xd))) {
			filter->cache = s;
			filter->status++;
		} else {
			FUNC0(FUNC5(filter->cache, filter));
			goto retry;
		}
		break;
	case 0x30: /* 4byte code 2nd char: 0:0x90-0xbf,1-3:0x80-0xbf,4:0x80-0x8f */
		s = (filter->cache<<6) | (c & 0x3f);
		c1 = filter->cache & 0x7;

		if ((c >= 0x80 && c <= 0xbf) &&
			((c1 == 0x0 && c >= 0x90) ||
			 (c1 == 0x4 && c < 0x90) ||
			 (c1 > 0x0 && c1 != 0x4))) {
			filter->cache = s;
			filter->status++;
		} else {
			FUNC0(FUNC5(filter->cache, filter));
			goto retry;
		}
		break;
	case 0x31: /* 4byte code 3rd char: 0x80-0xbf */
		if (c >= 0x80 && c <= 0xbf) {
			filter->cache = (filter->cache<<6) | (c & 0x3f);
			filter->status++;
		} else {
			FUNC0(FUNC5(filter->cache, filter));
			goto retry;
		}
		break;
	default:
		filter->status = 0;
		break;
	}

	return c;
}