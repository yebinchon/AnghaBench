#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int failed; } ;
typedef  TYPE_1__ PrintfTarget ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int,int*) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (double) ; 
 scalar_t__ FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (double*,double const*,int) ; 
 int FUNC9 (char*,char*,double,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(double value, char type, int forcesign, int leftjust,
		 int minlen, int zpad, int precision, int pointflag,
		 PrintfTarget *target)
{
	int			signvalue = 0;
	int			prec;
	int			vallen;
	char		fmt[8];
	char		convert[1024];
	int			zeropadlen = 0; /* amount to pad with zeroes */
	int			padlen;			/* amount to pad with spaces */

	/*
	 * We rely on the regular C library's sprintf to do the basic conversion,
	 * then handle padding considerations here.
	 *
	 * The dynamic range of "double" is about 1E+-308 for IEEE math, and not
	 * too wildly more than that with other hardware.  In "f" format, sprintf
	 * could therefore generate at most 308 characters to the left of the
	 * decimal point; while we need to allow the precision to get as high as
	 * 308+17 to ensure that we don't truncate significant digits from very
	 * small values.  To handle both these extremes, we use a buffer of 1024
	 * bytes and limit requested precision to 350 digits; this should prevent
	 * buffer overrun even with non-IEEE math.  If the original precision
	 * request was more than 350, separately pad with zeroes.
	 *
	 * We handle infinities and NaNs specially to ensure platform-independent
	 * output.
	 */
	if (precision < 0)			/* cover possible overflow of "accum" */
		precision = 0;
	prec = FUNC0(precision, 350);

	if (FUNC6(value))
	{
		FUNC10(convert, "NaN");
		vallen = 3;
		/* no zero padding, regardless of precision spec */
	}
	else
	{
		/*
		 * Handle sign (NaNs have no sign, so we don't do this in the case
		 * above).  "value < 0.0" will not be true for IEEE minus zero, so we
		 * detect that by looking for the case where value equals 0.0
		 * according to == but not according to memcmp.
		 */
		static const double dzero = 0.0;

		if (FUNC1((value < 0.0 ||
						 (value == 0.0 &&
						  FUNC8(&value, &dzero, sizeof(double)) != 0)),
						forcesign, &signvalue))
			value = -value;

		if (FUNC5(value))
		{
			FUNC10(convert, "Infinity");
			vallen = 8;
			/* no zero padding, regardless of precision spec */
		}
		else if (pointflag)
		{
			zeropadlen = precision - prec;
			fmt[0] = '%';
			fmt[1] = '.';
			fmt[2] = '*';
			fmt[3] = type;
			fmt[4] = '\0';
			vallen = FUNC9(convert, fmt, prec, value);
		}
		else
		{
			fmt[0] = '%';
			fmt[1] = type;
			fmt[2] = '\0';
			vallen = FUNC9(convert, fmt, value);
		}
		if (vallen < 0)
			goto fail;

		/*
		 * Windows, alone among our supported platforms, likes to emit
		 * three-digit exponent fields even when two digits would do.  Hack
		 * such results to look like the way everyone else does it.
		 */
#ifdef WIN32
		if (vallen >= 6 &&
			convert[vallen - 5] == 'e' &&
			convert[vallen - 3] == '0')
		{
			convert[vallen - 3] = convert[vallen - 2];
			convert[vallen - 2] = convert[vallen - 1];
			vallen--;
		}
#endif
	}

	padlen = FUNC2(minlen, vallen + zeropadlen, leftjust);

	FUNC7(zpad, signvalue, &padlen, target);

	if (zeropadlen > 0)
	{
		/* If 'e' or 'E' format, inject zeroes before the exponent */
		char	   *epos = FUNC11(convert, 'e');

		if (!epos)
			epos = FUNC11(convert, 'E');
		if (epos)
		{
			/* pad before exponent */
			FUNC4(convert, epos - convert, target);
			if (zeropadlen > 0)
				FUNC3('0', zeropadlen, target);
			FUNC4(epos, vallen - (epos - convert), target);
		}
		else
		{
			/* no exponent, pad after the digits */
			FUNC4(convert, vallen, target);
			if (zeropadlen > 0)
				FUNC3('0', zeropadlen, target);
		}
	}
	else
	{
		/* no zero padding, just emit the number as-is */
		FUNC4(convert, vallen, target);
	}

	FUNC12(padlen, target);
	return;

fail:
	target->failed = true;
}