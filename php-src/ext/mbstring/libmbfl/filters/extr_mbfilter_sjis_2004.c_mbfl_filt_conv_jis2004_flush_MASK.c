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
struct TYPE_5__ {int cache; int status; int (* flush_function ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;TYPE_1__* to; } ;
typedef  TYPE_2__ mbfl_convert_filter ;
struct TYPE_4__ {scalar_t__ no_encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int* jisx0213_u2_fb_tbl ; 
 int jisx0213_u2_tbl_len ; 
 scalar_t__ mbfl_no_encoding_eucjp2004 ; 
 scalar_t__ mbfl_no_encoding_sjis2004 ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

int
FUNC12(mbfl_convert_filter *filter)
{
	int k, c1, c2, s1, s2;

	k = filter->cache;
	filter->cache = 0;

	if (filter->status == 1 && k >= 0 && k <= jisx0213_u2_tbl_len) {
		s1 = jisx0213_u2_fb_tbl[k];

		if (filter->to->no_encoding == mbfl_no_encoding_sjis2004) {
			c1 = (s1 >> 8) & 0xff;
			c2 = s1 & 0xff;
			FUNC1(c1, c2, s1, s2);
		} else if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
			s2 = (s1 & 0xff) | 0x80;
			s1 = ((s1 >> 8) & 0xff) | 0x80;
		} else {
			s2 = s1 & 0x7f;
			s1 = (s1 >> 8) & 0x7f;
			if ((filter->status & 0xff00) != 0x200) {
				FUNC0((*filter->output_function)(0x1b, filter->data));		/* ESC */
				FUNC0((*filter->output_function)(0x24, filter->data));		/* '$' */
				FUNC0((*filter->output_function)(0x28, filter->data));		/* '(' */
				FUNC0((*filter->output_function)(0x51, filter->data));		/* 'Q' */
			}
			filter->status = 0x200;
		}

		FUNC0((*filter->output_function)(s1, filter->data));
		FUNC0((*filter->output_function)(s2, filter->data));
	}

	/* back to latin */
	if ((filter->status & 0xff00) != 0) {
		FUNC0((*filter->output_function)(0x1b, filter->data));		/* ESC */
		FUNC0((*filter->output_function)(0x28, filter->data));		/* '(' */
		FUNC0((*filter->output_function)(0x42, filter->data));		/* 'B' */
	}

	filter->status = 0;

	if (filter->flush_function != NULL) {
		return (*filter->flush_function)(filter->data);
	}

	return 0;
}