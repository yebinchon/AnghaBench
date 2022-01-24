#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;TYPE_1__* from; } ;
typedef  TYPE_2__ mbfl_convert_filter ;
struct TYPE_4__ {int /*<<< orphan*/  no_encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MBFL_WCSGROUP_MASK ; 
 int MBFL_WCSGROUP_THROUGH ; 
 int MBFL_WCSPLANE_MASK ; 
 int MBFL_WCSPLANE_WINCP932 ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int* cp932ext1_ucs_table ; 
 int cp932ext1_ucs_table_max ; 
 int cp932ext1_ucs_table_min ; 
 int* cp932ext2_ucs_table ; 
 int cp932ext2_ucs_table_max ; 
 int cp932ext2_ucs_table_min ; 
 int* cp932ext3_ucs_table ; 
 int cp932ext3_ucs_table_max ; 
 int cp932ext3_ucs_table_min ; 
 int* jisx0208_ucs_table ; 
 int jisx0208_ucs_table_size ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,int*) ; 
 int FUNC4 (int,int*) ; 
 int /*<<< orphan*/  mbfl_no_encoding_sjis_docomo ; 
 int /*<<< orphan*/  mbfl_no_encoding_sjis_kddi ; 
 int /*<<< orphan*/  mbfl_no_encoding_sjis_sb ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 

int
FUNC20(int c, mbfl_convert_filter *filter)
{
	int c1, s, s1 = 0, s2 = 0, w;
	int snd = 0;

retry:
	switch (filter->status) {
	case 0:
		if (c >= 0 && c < 0x80) {	/* latin */
			if (filter->from->no_encoding == mbfl_no_encoding_sjis_sb && c == 0x1b) {
				filter->cache = c;
				filter->status = 2;
			} else {
				FUNC0((*filter->output_function)(c, filter->data));
			}
		} else if (c > 0xa0 && c < 0xe0) {	/* kana */
			FUNC0((*filter->output_function)(0xfec0 + c, filter->data));
		} else if (c > 0x80 && c < 0xfd && c != 0xa0) {	/* kanji first char */
			filter->status = 1;
			filter->cache = c;
		} else {
			w = c & MBFL_WCSGROUP_MASK;
			w |= MBFL_WCSGROUP_THROUGH;
			FUNC0((*filter->output_function)(w, filter->data));
		}
		break;

	case 1:		/* kanji second char */
		filter->status = 0;
		c1 = filter->cache;
		if (c >= 0x40 && c <= 0xfc && c != 0x7f) {
			w = 0;
			FUNC1(c1, c, s1, s2);
			s = (s1 - 0x21)*94 + s2 - 0x21;
			if (s <= 137) {
				if (s == 31) {
					w = 0xff3c;			/* FULLWIDTH REVERSE SOLIDUS */
				} else if (s == 32) {
					w = 0xff5e;			/* FULLWIDTH TILDE */
				} else if (s == 33) {
					w = 0x2225;			/* PARALLEL TO */
				} else if (s == 60) {
					w = 0xff0d;			/* FULLWIDTH HYPHEN-MINUS */
				} else if (s == 80) {
					w = 0xffe0;			/* FULLWIDTH CENT SIGN */
				} else if (s == 81) {
					w = 0xffe1;			/* FULLWIDTH POUND SIGN */
				} else if (s == 137) {
					w = 0xffe2;			/* FULLWIDTH NOT SIGN */
				}
			}
			if (w == 0) {
				if (s >= cp932ext1_ucs_table_min && s < cp932ext1_ucs_table_max) {		/* vendor ext1 (13ku) */
					w = cp932ext1_ucs_table[s - cp932ext1_ucs_table_min];
				} else if (s >= 0 && s < jisx0208_ucs_table_size) {		/* X 0208 */
					w = jisx0208_ucs_table[s];
				} else if (s >= cp932ext2_ucs_table_min && s < cp932ext2_ucs_table_max) {		/* vendor ext2 (89ku - 92ku) */
					w = cp932ext2_ucs_table[s - cp932ext2_ucs_table_min];
				} else if (s >= cp932ext3_ucs_table_min && s < cp932ext3_ucs_table_max) {		/* vendor ext3 (115ku - 119ku) */
					w = cp932ext3_ucs_table[s - cp932ext3_ucs_table_min];
				} else if (s >= (94*94) && s < (114*94)) {		/* user (95ku - 114ku) */
					w = s - (94*94) + 0xe000;
				}

 				if (s >= (94*94) && s < 119*94) {
					if (filter->from->no_encoding == mbfl_no_encoding_sjis_docomo) {
						w = FUNC2(s, &snd);
					} else if (filter->from->no_encoding == mbfl_no_encoding_sjis_kddi) {
						w = FUNC3(s, &snd);
					} else if (filter->from->no_encoding == mbfl_no_encoding_sjis_sb) {
						w = FUNC4(s, &snd);
					}

					if (w > 0  && snd > 0) {
						FUNC0((*filter->output_function)(snd, filter->data));
					}
				}
			}
			if (w <= 0) {
				w = (s1 << 8) | s2;
				w &= MBFL_WCSPLANE_MASK;
				w |= MBFL_WCSPLANE_WINCP932;
			}
			FUNC0((*filter->output_function)(w, filter->data));
		} else if ((c >= 0 && c < 0x21) || c == 0x7f) {		/* CTLs */
			FUNC0((*filter->output_function)(c, filter->data));
		} else {
			w = (c1 << 8) | c;
			w &= MBFL_WCSGROUP_MASK;
			w |= MBFL_WCSGROUP_THROUGH;
			FUNC0((*filter->output_function)(w, filter->data));
		}
		break;
	/* ESC : Softbank Emoji */
	case 2:
		if (filter->from->no_encoding == mbfl_no_encoding_sjis_sb &&
			c == 0x24) {
				filter->cache = c;
				filter->status++;
		} else {
			filter->cache = 0;
			filter->status = 0;
			FUNC0((*filter->output_function)(0x1b, filter->data));
			goto retry;
		}
		break;

	/* ESC $ : Softbank Emoji */
	case 3:
		if (filter->from->no_encoding == mbfl_no_encoding_sjis_sb &&
			((c >= 0x45 && c <= 0x47) || (c >= 0x4f && c <= 0x51))) {
				filter->cache = c;
				filter->status++;
		} else {
			filter->cache = 0;
			filter->status = 0;
			FUNC0((*filter->output_function)(0x1b, filter->data));
			FUNC0((*filter->output_function)(0x24, filter->data));
			goto retry;
		}
		break;

	/* ESC [GEFOPQ] : Softbank Emoji */
	case 4:
		w = 0;
		if (filter->from->no_encoding == mbfl_no_encoding_sjis_sb) {
			c1 = filter->cache;

			if (c == 0x0f) {
				w = c;
				filter->cache = 0;
				filter->status = 0;
			} else {
				if (c1 == 0x47 && c >= 0x21 && c <= 0x7a) {
					s1 = 0x91; s2 = c;
				} else if (c1 == 0x45 && c >= 0x21 && c <= 0x7a) {
					s1 = 0x8d; s2 = c;
				} else if (c1 == 0x46 && c >= 0x21 && c <= 0x7a) {
					s1 = 0x8e; s2 = c;
				} else if (c1 == 0x4f && c >= 0x21 && c <= 0x6d) {
					s1 = 0x92; s2 = c;
				} else if (c1 == 0x50 && c >= 0x21 && c <= 0x6c) {
					s1 = 0x95; s2 = c;
				} else if (c1 == 0x51 && c >= 0x21 && c <= 0x5e) {
					s1 = 0x96; s2 = c;
				}
				s  = (s1 - 0x21)*94 + s2 - 0x21;
				w = FUNC4(s, &snd);
				if (w > 0) {
					if (snd > 0) {
						FUNC0((*filter->output_function)(snd, filter->data));
					}
					FUNC0((*filter->output_function)(w, filter->data));
				}
			}
		}

		if (w <= 0) {
			c1 = filter->cache;
			filter->cache = 0;
			filter->status = 0;
			FUNC0((*filter->output_function)(0x1b, filter->data));
			FUNC0((*filter->output_function)(0x24, filter->data));
			FUNC0((*filter->output_function)(c1 & 0xff, filter->data));
			goto retry;
		}
		break;

	default:
		filter->status = 0;
		break;
	}

	return c;
}