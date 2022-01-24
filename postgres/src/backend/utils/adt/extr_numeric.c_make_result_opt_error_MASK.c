#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int n_sign_dscale; int n_weight; } ;
struct TYPE_14__ {int n_header; } ;
struct TYPE_16__ {int n_header; TYPE_2__ n_long; TYPE_1__ n_short; } ;
struct TYPE_18__ {TYPE_3__ choice; } ;
struct TYPE_17__ {int weight; int sign; int ndigits; int dscale; scalar_t__* digits; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_4__ NumericVar ;
typedef  scalar_t__ NumericDigit ;
typedef  TYPE_5__* Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int NUMERIC_DSCALE_MASK ; 
 scalar_t__ NUMERIC_HDRSZ ; 
 scalar_t__ NUMERIC_HDRSZ_SHORT ; 
 int NUMERIC_NAN ; 
 int FUNC4 (TYPE_5__*) ; 
 int NUMERIC_NEG ; 
 int NUMERIC_POS ; 
 int NUMERIC_SHORT ; 
 int NUMERIC_SHORT_DSCALE_SHIFT ; 
 int NUMERIC_SHORT_SIGN_MASK ; 
 int NUMERIC_SHORT_WEIGHT_MASK ; 
 int NUMERIC_SHORT_WEIGHT_SIGN_MASK ; 
 int FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static Numeric
FUNC13(const NumericVar *var, bool *have_error)
{
	Numeric		result;
	NumericDigit *digits = var->digits;
	int			weight = var->weight;
	int			sign = var->sign;
	int			n;
	Size		len;

	if (have_error)
		*have_error = false;

	if (sign == NUMERIC_NAN)
	{
		result = (Numeric) FUNC12(NUMERIC_HDRSZ_SHORT);

		FUNC6(result, NUMERIC_HDRSZ_SHORT);
		result->choice.n_header = NUMERIC_NAN;
		/* the header word is all we need */

		FUNC7("make_result()", result);
		return result;
	}

	n = var->ndigits;

	/* truncate leading zeroes */
	while (n > 0 && *digits == 0)
	{
		digits++;
		weight--;
		n--;
	}
	/* truncate trailing zeroes */
	while (n > 0 && digits[n - 1] == 0)
		n--;

	/* If zero result, force to weight=0 and positive sign */
	if (n == 0)
	{
		weight = 0;
		sign = NUMERIC_POS;
	}

	/* Build the result */
	if (FUNC1(var->dscale, weight))
	{
		len = NUMERIC_HDRSZ_SHORT + n * sizeof(NumericDigit);
		result = (Numeric) FUNC12(len);
		FUNC6(result, len);
		result->choice.n_short.n_header =
			(sign == NUMERIC_NEG ? (NUMERIC_SHORT | NUMERIC_SHORT_SIGN_MASK)
			 : NUMERIC_SHORT)
			| (var->dscale << NUMERIC_SHORT_DSCALE_SHIFT)
			| (weight < 0 ? NUMERIC_SHORT_WEIGHT_SIGN_MASK : 0)
			| (weight & NUMERIC_SHORT_WEIGHT_MASK);
	}
	else
	{
		len = NUMERIC_HDRSZ + n * sizeof(NumericDigit);
		result = (Numeric) FUNC12(len);
		FUNC6(result, len);
		result->choice.n_long.n_sign_dscale =
			sign | (var->dscale & NUMERIC_DSCALE_MASK);
		result->choice.n_long.n_weight = weight;
	}

	FUNC0(FUNC4(result) == n);
	if (n > 0)
		FUNC11(FUNC2(result), digits, n * sizeof(NumericDigit));

	/* Check for overflow of int16 fields */
	if (FUNC5(result) != weight ||
		FUNC3(result) != var->dscale)
	{
		if (have_error)
		{
			*have_error = true;
			return NULL;
		}
		else
		{
			FUNC8(ERROR,
					(FUNC9(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
					 FUNC10("value overflows numeric format")));
		}
	}

	FUNC7("make_result()", result);
	return result;
}