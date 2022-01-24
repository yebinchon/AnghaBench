#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mbfl_convert_vtbl {int dummy; } ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  flush_function; int /*<<< orphan*/  output_function; int /*<<< orphan*/  (* filter_dtor ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct mbfl_convert_vtbl const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbfl_convert_vtbl* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct mbfl_convert_vtbl vtbl_pass ; 

void FUNC3(mbfl_convert_filter *filter,
	    const mbfl_encoding *from, const mbfl_encoding *to)
{
	const struct mbfl_convert_vtbl *vtbl;

	/* destruct old filter */
	(*filter->filter_dtor)(filter);

	vtbl = FUNC1(from, to);

	if (vtbl == NULL) {
		vtbl = &vtbl_pass;
	}

	FUNC0(filter, from, to, vtbl,
			filter->output_function, filter->flush_function, filter->data);
}