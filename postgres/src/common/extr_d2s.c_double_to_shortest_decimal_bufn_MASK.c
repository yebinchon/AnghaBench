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
typedef  int uint64 ;
typedef  unsigned int uint32 ;
typedef  int /*<<< orphan*/  floating_decimal_64 ;

/* Variables and functions */
 int const DOUBLE_EXPONENT_BITS ; 
 int const DOUBLE_MANTISSA_BITS ; 
 int const FUNC0 (int) ; 
 int FUNC1 (char*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,unsigned int const) ; 
 int FUNC3 (int const,unsigned int const,int /*<<< orphan*/ *) ; 
 int FUNC4 (double) ; 
 int FUNC5 (int /*<<< orphan*/ ,int const,char*) ; 

int
FUNC6(double f, char *result)
{
	/*
	 * Step 1: Decode the floating-point number, and unify normalized and
	 * subnormal cases.
	 */
	const uint64 bits = FUNC4(f);

	/* Decode bits into sign, mantissa, and exponent. */
	const bool	ieeeSign = ((bits >> (DOUBLE_MANTISSA_BITS + DOUBLE_EXPONENT_BITS)) & 1) != 0;
	const uint64 ieeeMantissa = bits & ((FUNC0(1) << DOUBLE_MANTISSA_BITS) - 1);
	const uint32 ieeeExponent = (uint32) ((bits >> DOUBLE_MANTISSA_BITS) & ((1u << DOUBLE_EXPONENT_BITS) - 1));

	/* Case distinction; exit early for the easy cases. */
	if (ieeeExponent == ((1u << DOUBLE_EXPONENT_BITS) - 1u) || (ieeeExponent == 0 && ieeeMantissa == 0))
	{
		return FUNC1(result, ieeeSign, (ieeeExponent != 0), (ieeeMantissa != 0));
	}

	floating_decimal_64 v;
	const bool	isSmallInt = FUNC3(ieeeMantissa, ieeeExponent, &v);

	if (!isSmallInt)
	{
		v = FUNC2(ieeeMantissa, ieeeExponent);
	}

	return FUNC5(v, ieeeSign, result);
}