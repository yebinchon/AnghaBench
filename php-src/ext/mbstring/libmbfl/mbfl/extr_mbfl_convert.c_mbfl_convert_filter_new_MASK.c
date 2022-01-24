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
struct mbfl_convert_vtbl {int dummy; } ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
typedef  int /*<<< orphan*/  mbfl_convert_filter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct mbfl_convert_vtbl const*,int (*) (int,void*),int (*) (void*),void*) ; 
 struct mbfl_convert_vtbl* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

mbfl_convert_filter *
FUNC4(
    const mbfl_encoding *from,
    const mbfl_encoding *to,
    int (*output_function)(int, void* ),
    int (*flush_function)(void*),
    void* data)
{
	mbfl_convert_filter * filter;
	const struct mbfl_convert_vtbl *vtbl;

	vtbl = FUNC1(from, to);
	if (vtbl == NULL) {
		return NULL;
	}

	/* allocate */
	filter = (mbfl_convert_filter *)FUNC3(sizeof(mbfl_convert_filter));
	if (filter == NULL) {
		return NULL;
	}

	if (FUNC0(filter, from, to, vtbl,
			output_function, flush_function, data)) {
		FUNC2(filter);
		return NULL;
	}

	return filter;
}