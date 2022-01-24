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
struct mbfl_convert_vtbl {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
typedef  int /*<<< orphan*/  mbfl_convert_filter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct mbfl_convert_vtbl const*,int (*) (int,void*),int (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 struct mbfl_convert_vtbl vtbl_pass ; 

mbfl_convert_filter *
FUNC4(
	const struct mbfl_convert_vtbl *vtbl,
    int (*output_function)(int, void* ),
    int (*flush_function)(void*),
    void* data)
{
	mbfl_convert_filter * filter;
	const mbfl_encoding *from_encoding, *to_encoding;

	if (vtbl == NULL) {
		vtbl = &vtbl_pass;
	}

	from_encoding = FUNC3(vtbl->from);
	to_encoding = FUNC3(vtbl->to);

	/* allocate */
	filter = (mbfl_convert_filter *)FUNC2(sizeof(mbfl_convert_filter));
	if (filter == NULL) {
		return NULL;
	}

	if (FUNC0(filter, from_encoding, to_encoding, vtbl,
			output_function, flush_function, data)) {
		FUNC1(filter);
		return NULL;
	}

	return filter;
}