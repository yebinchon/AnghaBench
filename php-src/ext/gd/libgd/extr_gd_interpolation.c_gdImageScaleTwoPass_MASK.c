#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_12__ {int /*<<< orphan*/  interpolation_id; int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,unsigned int const,unsigned int const,TYPE_1__*,unsigned int const,unsigned int const) ; 
 int FUNC1 (TYPE_1__*,unsigned int const,unsigned int const,TYPE_1__*,unsigned int const,unsigned int const) ; 
 TYPE_1__* FUNC2 (unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

gdImagePtr FUNC6(const gdImagePtr src, const unsigned int src_width, const unsigned int src_height, const unsigned int new_width, const unsigned int new_height)
{
	gdImagePtr tmp_im;
	gdImagePtr dst;
	int scale_pass_res;

	if (new_width == 0 || new_height == 0) {
		return NULL;
	}

	/* Convert to truecolor if it isn't; this code requires it. */
	if (!src->trueColor) {
		FUNC4(src);
	}

	tmp_im = FUNC2(new_width, src_height);
	if (tmp_im == NULL) {
		return NULL;
	}
	FUNC5(tmp_im, src->interpolation_id);
	scale_pass_res = FUNC0(src, src_width, src_height, tmp_im, new_width, src_height);
	if (scale_pass_res != 1) {
		FUNC3(tmp_im);
		return NULL;
	}

	dst = FUNC2(new_width, new_height);
	if (dst == NULL) {
		FUNC3(tmp_im);
		return NULL;
	}
	FUNC5(dst, src->interpolation_id);
	scale_pass_res = FUNC1(tmp_im, new_width, src_height, dst, new_width, new_height);
	if (scale_pass_res != 1) {
		FUNC3(dst);
		FUNC3(tmp_im);
		return NULL;
	}
	FUNC3(tmp_im);

	return dst;
}