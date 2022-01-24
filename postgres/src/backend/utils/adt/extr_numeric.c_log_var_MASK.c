#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dscale; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMERIC_MAX_DISPLAY_SCALE ; 
 int /*<<< orphan*/  NUMERIC_MIN_DISPLAY_SCALE ; 
 int NUMERIC_MIN_SIG_DIGITS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(const NumericVar *base, const NumericVar *num, NumericVar *result)
{
	NumericVar	ln_base;
	NumericVar	ln_num;
	int			ln_base_dweight;
	int			ln_num_dweight;
	int			result_dweight;
	int			rscale;
	int			ln_base_rscale;
	int			ln_num_rscale;

	FUNC5(&ln_base);
	FUNC5(&ln_num);

	/* Estimated dweights of ln(base), ln(num) and the final result */
	ln_base_dweight = FUNC3(base);
	ln_num_dweight = FUNC3(num);
	result_dweight = ln_num_dweight - ln_base_dweight;

	/*
	 * Select the scale of the result so that it will have at least
	 * NUMERIC_MIN_SIG_DIGITS significant digits and is not less than either
	 * input's display scale.
	 */
	rscale = NUMERIC_MIN_SIG_DIGITS - result_dweight;
	rscale = FUNC0(rscale, base->dscale);
	rscale = FUNC0(rscale, num->dscale);
	rscale = FUNC0(rscale, NUMERIC_MIN_DISPLAY_SCALE);
	rscale = FUNC1(rscale, NUMERIC_MAX_DISPLAY_SCALE);

	/*
	 * Set the scales for ln(base) and ln(num) so that they each have more
	 * significant digits than the final result.
	 */
	ln_base_rscale = rscale + result_dweight - ln_base_dweight + 8;
	ln_base_rscale = FUNC0(ln_base_rscale, NUMERIC_MIN_DISPLAY_SCALE);

	ln_num_rscale = rscale + result_dweight - ln_num_dweight + 8;
	ln_num_rscale = FUNC0(ln_num_rscale, NUMERIC_MIN_DISPLAY_SCALE);

	/* Form natural logarithms */
	FUNC6(base, &ln_base, ln_base_rscale);
	FUNC6(num, &ln_num, ln_num_rscale);

	/* Divide and round to the required scale */
	FUNC2(&ln_num, &ln_base, result, rscale, true);

	FUNC4(&ln_num);
	FUNC4(&ln_base);
}