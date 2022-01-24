#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbfl_identify_filter ;
typedef  enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 

mbfl_identify_filter *FUNC3(enum mbfl_no_encoding encoding)
{
	mbfl_identify_filter *filter;

	/* allocate */
	filter = (mbfl_identify_filter *)FUNC2(sizeof(mbfl_identify_filter));
	if (filter == NULL) {
		return NULL;
	}

	if (FUNC1(filter, encoding)) {
		FUNC0(filter);
		return NULL;
	}

	return filter;
}