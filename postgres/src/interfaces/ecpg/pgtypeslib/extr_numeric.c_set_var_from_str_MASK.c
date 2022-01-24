#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int weight; scalar_t__ dscale; scalar_t__* digits; int ndigits; scalar_t__ rscale; void* sign; } ;
typedef  TYPE_1__ numeric ;

/* Variables and functions */
 int INT_MAX ; 
 void* NUMERIC_NAN ; 
 void* NUMERIC_NEG ; 
 void* NUMERIC_POS ; 
 scalar_t__ PGTYPES_NUM_BAD_NUMERIC ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 long FUNC5 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC6(char *str, char **ptr, numeric *dest)
{
	bool		have_dp = false;
	int			i = 0;

	errno = 0;
	*ptr = str;
	while (*(*ptr))
	{
		if (!FUNC2((unsigned char) *(*ptr)))
			break;
		(*ptr)++;
	}

	if (FUNC3(*ptr, "NaN", 3) == 0)
	{
		*ptr += 3;
		dest->sign = NUMERIC_NAN;

		/* Should be nothing left but spaces */
		while (*(*ptr))
		{
			if (!FUNC2((unsigned char) *(*ptr)))
			{
				errno = PGTYPES_NUM_BAD_NUMERIC;
				return -1;
			}
			(*ptr)++;
		}

		return 0;
	}

	if (FUNC0(dest, FUNC4((*ptr))) < 0)
		return -1;
	dest->weight = -1;
	dest->dscale = 0;
	dest->sign = NUMERIC_POS;

	switch (*(*ptr))
	{
		case '+':
			dest->sign = NUMERIC_POS;
			(*ptr)++;
			break;

		case '-':
			dest->sign = NUMERIC_NEG;
			(*ptr)++;
			break;
	}

	if (*(*ptr) == '.')
	{
		have_dp = true;
		(*ptr)++;
	}

	if (!FUNC1((unsigned char) *(*ptr)))
	{
		errno = PGTYPES_NUM_BAD_NUMERIC;
		return -1;
	}

	while (*(*ptr))
	{
		if (FUNC1((unsigned char) *(*ptr)))
		{
			dest->digits[i++] = *(*ptr)++ - '0';
			if (!have_dp)
				dest->weight++;
			else
				dest->dscale++;
		}
		else if (*(*ptr) == '.')
		{
			if (have_dp)
			{
				errno = PGTYPES_NUM_BAD_NUMERIC;
				return -1;
			}
			have_dp = true;
			(*ptr)++;
		}
		else
			break;
	}
	dest->ndigits = i;

	/* Handle exponent, if any */
	if (*(*ptr) == 'e' || *(*ptr) == 'E')
	{
		long		exponent;
		char	   *endptr;

		(*ptr)++;
		exponent = FUNC5(*ptr, &endptr, 10);
		if (endptr == (*ptr))
		{
			errno = PGTYPES_NUM_BAD_NUMERIC;
			return -1;
		}
		(*ptr) = endptr;
		if (exponent >= INT_MAX / 2 || exponent <= -(INT_MAX / 2))
		{
			errno = PGTYPES_NUM_BAD_NUMERIC;
			return -1;
		}
		dest->weight += (int) exponent;
		dest->dscale -= (int) exponent;
		if (dest->dscale < 0)
			dest->dscale = 0;
	}

	/* Should be nothing left but spaces */
	while (*(*ptr))
	{
		if (!FUNC2((unsigned char) *(*ptr)))
		{
			errno = PGTYPES_NUM_BAD_NUMERIC;
			return -1;
		}
		(*ptr)++;
	}

	/* Strip any leading zeroes */
	while (dest->ndigits > 0 && *(dest->digits) == 0)
	{
		(dest->digits)++;
		(dest->weight)--;
		(dest->ndigits)--;
	}
	if (dest->ndigits == 0)
		dest->weight = 0;

	dest->rscale = dest->dscale;
	return 0;
}