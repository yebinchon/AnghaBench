#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t len; unsigned char* val; } ;
typedef  TYPE_1__ mbfl_string ;
struct TYPE_8__ {int /*<<< orphan*/ * encoding; scalar_t__ status; scalar_t__ flag; int /*<<< orphan*/  (* filter_function ) (unsigned char,TYPE_2__*) ;} ;
typedef  TYPE_2__ mbfl_identify_filter ;
typedef  int /*<<< orphan*/  mbfl_encoding ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,TYPE_2__*) ; 

const mbfl_encoding *
FUNC5(mbfl_string *string, const mbfl_encoding **elist, int elistsz, int strict)
{
	int i, num, bad;
	size_t n;
	unsigned char *p;
	mbfl_identify_filter *flist, *filter;
	const mbfl_encoding *encoding;

	/* flist is an array of mbfl_identify_filter instances */
	flist = (mbfl_identify_filter *)FUNC0(elistsz, sizeof(mbfl_identify_filter));
	if (flist == NULL) {
		return NULL;
	}

	num = 0;
	if (elist != NULL) {
		for (i = 0; i < elistsz; i++) {
			if (!FUNC3(&flist[num], elist[i])) {
				num++;
			}
		}
	}

	/* feed data */
	n = string->len;
	p = string->val;

	if (p != NULL) {
		bad = 0;
		while (n > 0) {
			for (i = 0; i < num; i++) {
				filter = &flist[i];
				if (!filter->flag) {
					(*filter->filter_function)(*p, filter);
					if (filter->flag) {
						bad++;
					}
				}
			}
			if ((num - 1) <= bad && !strict) {
				break;
			}
			p++;
			n--;
		}
	}

	/* judge */
	encoding = NULL;

	for (i = 0; i < num; i++) {
		filter = &flist[i];
		if (!filter->flag) {
			if (strict && filter->status) {
 				continue;
 			}
			encoding = filter->encoding;
			break;
		}
	}

	/* fall-back judge */
	if (!encoding) {
		for (i = 0; i < num; i++) {
			filter = &flist[i];
			if (!filter->flag && (!strict || !filter->status)) {
				encoding = filter->encoding;
				break;
			}
		}
	}

	/* cleanup */
	/* dtors should be called in reverse order */
	i = num;
	while (--i >= 0) {
		FUNC2(&flist[i]);
	}

	FUNC1((void *)flist);

	return encoding;
}