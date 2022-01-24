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
typedef  int /*<<< orphan*/  numeric ;
typedef  int /*<<< orphan*/  decimal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,char**) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int /*<<< orphan*/ *) ; 
 int FUNC11 (long,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,double*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int FUNC19 (int /*<<< orphan*/ *,long*) ; 
 scalar_t__ FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **) ; 
 scalar_t__* nums ; 
 int /*<<< orphan*/  FUNC23 (double) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/ ** FUNC25 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC26(void)
{
	char *text="error\n";
	char *endptr;
	numeric *num, *nin;
	decimal *dec;
	long l;
	int i, j, k, q, r, count = 0;
	double d;
	numeric **numarr = (numeric **) FUNC20(1, sizeof(numeric));

	FUNC0(1, stderr);

	for (i = 0; nums[i]; i++)
	{
		num = FUNC8(nums[i], &endptr);
		if (!num) FUNC21();
		if (endptr != NULL)
		{
			FUNC24("endptr of %d is not NULL\n", i);
			if (*endptr != '\0')
				FUNC24("*endptr of %d is not \\0\n", i);
		}
		if (!num) continue;

		numarr = FUNC25(numarr, sizeof(numeric *) * (count + 1));
		numarr[count++] = num;

		text = FUNC15(num, -1);
		if (!text) FUNC21();
		FUNC24("num[%d,1]: %s\n", i, text); FUNC1(text);
		text = FUNC15(num, 0);
		if (!text) FUNC21();
		FUNC24("num[%d,2]: %s\n", i, text); FUNC1(text);
		text = FUNC15(num, 1);
		if (!text) FUNC21();
		FUNC24("num[%d,3]: %s\n", i, text); FUNC1(text);
		text = FUNC15(num, 2);
		if (!text) FUNC21();
		FUNC24("num[%d,4]: %s\n", i, text); FUNC1(text);

		nin = FUNC13();
		text = FUNC15(nin, 2);
		if (!text) FUNC21();
		FUNC24("num[%d,5]: %s\n", i, text); FUNC1(text);

		r = FUNC19(num, &l);
		if (r) FUNC21();
		FUNC24("num[%d,6]: %ld (r: %d)\n", i, r?0L:l, r);
		if (r == 0)
		{
			r = FUNC11(l, nin);
			if (r) FUNC21();
			text = FUNC15(nin, 2);
			q = FUNC5(num, nin);
			FUNC24("num[%d,7]: %s (r: %d - cmp: %d)\n", i, text, r, q);
			FUNC1(text);
		}

		r = FUNC18(num, &k);
		if (r) FUNC21();
		FUNC24("num[%d,8]: %d (r: %d)\n", i, r?0:k, r);
		if (r == 0)
		{
			r = FUNC10(k, nin);
			if (r) FUNC21();
			text = FUNC15(nin, 2);
			q = FUNC5(num, nin);
			FUNC24("num[%d,9]: %s (r: %d - cmp: %d)\n", i, text, r, q);
			FUNC1(text);
		}

		if (i != 6)
		{
			/* underflow does not work reliable on several archs, so not testing it here */
			/* this is a libc problem since we only call strtod() */

			r = FUNC17(num, &d);
			if (r) FUNC21();
			FUNC24("num[%d,10]: ", i);
			FUNC23(r ? 0.0 : d);
			FUNC24(" (r: %d)\n", r);
		}

		/* do not test double to numeric because
		 * - extra digits are different on different architectures
		 * - PGTYPESnumeric_from_double internally calls PGTYPESnumeric_from_asc anyway
		 */

		dec = FUNC3();
		r = FUNC16(num, dec);
		if (r) FUNC21();
		/* we have no special routine for outputting decimal, it would
		 * convert to a numeric anyway */
		FUNC24("num[%d,11]: - (r: %d)\n", i, r);
		if (r == 0)
		{
			r = FUNC9(dec, nin);
			if (r) FUNC21();
			text = FUNC15(nin, 2);
			q = FUNC5(num, nin);
			FUNC24("num[%d,12]: %s (r: %d - cmp: %d)\n", i, text, r, q);
			FUNC1(text);
		}

		FUNC2(dec);
		FUNC7(nin);
		FUNC24("\n");
	}

	for (i = 0; i < count; i++)
	{
		for (j = 0; j < count; j++)
		{
			numeric* a = FUNC13();
			numeric* s = FUNC13();
			numeric* m = FUNC13();
			numeric* d = FUNC13();
			r = FUNC4(numarr[i], numarr[j], a);
			if (r)
			{
				FUNC21();
				FUNC24("r: %d\n", r);
			}
			else
			{
				text = FUNC15(a, 10);
				FUNC24("num[a,%d,%d]: %s\n", i, j, text);
				FUNC1(text);
			}
			r = FUNC14(numarr[i], numarr[j], s);
			if (r)
			{
				FUNC21();
				FUNC24("r: %d\n", r);
			}
			else
			{
				text = FUNC15(s, 10);
				FUNC24("num[s,%d,%d]: %s\n", i, j, text);
				FUNC1(text);
			}
			r = FUNC12(numarr[i], numarr[j], m);
			if (r)
			{
				FUNC21();
				FUNC24("r: %d\n", r);
			}
			else
			{
				text = FUNC15(m, 10);
				FUNC24("num[m,%d,%d]: %s\n", i, j, text);
				FUNC1(text);
			}
			r = FUNC6(numarr[i], numarr[j], d);
			if (r)
			{
				FUNC21();
				FUNC24("r: %d\n", r);
			}
			else
			{
				text = FUNC15(d, 10);
				FUNC24("num[d,%d,%d]: %s\n", i, j, text);
				FUNC1(text);
			}

			FUNC7(a);
			FUNC7(s);
			FUNC7(m);
			FUNC7(d);
		}
	}

	for (i = 0; i < count; i++)
	{
		text = FUNC15(numarr[i], -1);
		FUNC24("%d: %s\n", i, text);
		FUNC1(text);
		FUNC7(numarr[i]);
	}
	FUNC22(numarr);

	return 0;
}