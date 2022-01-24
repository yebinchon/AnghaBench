#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_10__ {scalar_t__ ndigits; int weight; int /*<<< orphan*/ * digits; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 int DEC_DIGITS ; 
 int /*<<< orphan*/  const_ten ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,char*,int) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static char *
FUNC10(const NumericVar *var, int rscale)
{
	int32		exponent;
	NumericVar	denominator;
	NumericVar	significand;
	int			denom_scale;
	size_t		len;
	char	   *str;
	char	   *sig_out;

	if (rscale < 0)
		rscale = 0;

	/*
	 * Determine the exponent of this number in normalised form.
	 *
	 * This is the exponent required to represent the number with only one
	 * significant digit before the decimal place.
	 */
	if (var->ndigits > 0)
	{
		exponent = (var->weight + 1) * DEC_DIGITS;

		/*
		 * Compensate for leading decimal zeroes in the first numeric digit by
		 * decrementing the exponent.
		 */
		exponent -= DEC_DIGITS - (int) FUNC4(var->digits[0]);
	}
	else
	{
		/*
		 * If var has no digits, then it must be zero.
		 *
		 * Zero doesn't technically have a meaningful exponent in normalised
		 * notation, but we just display the exponent as zero for consistency
		 * of output.
		 */
		exponent = 0;
	}

	/*
	 * The denominator is set to 10 raised to the power of the exponent.
	 *
	 * We then divide var by the denominator to get the significand, rounding
	 * to rscale decimal digits in the process.
	 */
	if (exponent < 0)
		denom_scale = -exponent;
	else
		denom_scale = 0;

	FUNC3(&denominator);
	FUNC3(&significand);

	FUNC7(&const_ten, exponent, &denominator, denom_scale);
	FUNC0(var, &denominator, &significand, rscale, true);
	sig_out = FUNC2(&significand);

	FUNC1(&denominator);
	FUNC1(&significand);

	/*
	 * Allocate space for the result.
	 *
	 * In addition to the significand, we need room for the exponent
	 * decoration ("e"), the sign of the exponent, up to 10 digits for the
	 * exponent itself, and of course the null terminator.
	 */
	len = FUNC9(sig_out) + 13;
	str = FUNC5(len);
	FUNC8(str, len, "%se%+03d", sig_out, exponent);

	FUNC6(sig_out);

	return str;
}