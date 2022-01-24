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
typedef  int /*<<< orphan*/  decimal ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  CDECIMALTYPE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int FUNC9 (long,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__* decs ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,double*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int*) ; 
 int FUNC16 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (double) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/ ** FUNC20 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 

int
FUNC24(void)
{
	decimal *dec, *din;
	char buf[BUFSIZE];
	long l;
	int i, j, k, q, r, count = 0;
	double dbl;
	decimal **decarr = (decimal **) FUNC3(1, sizeof(decimal));

	FUNC0(1, stderr);

	for (i = 0; decs[i]; i++)
	{
		dec = FUNC2();
		r = FUNC7(decs[i], FUNC23(decs[i]), dec);
		if (r)
		{
			FUNC4();
			FUNC19("dec[%d,0]: r: %d\n", i, r);
			FUNC1(dec);
			continue;
		}
		decarr = FUNC20(decarr, sizeof(decimal *) * (count + 1));
		decarr[count++] = dec;

		r = FUNC13(dec, buf, BUFSIZE-1, -1);
		if (r < 0) FUNC4();
		FUNC19("dec[%d,1]: r: %d, %s\n", i, r, buf);

		r = FUNC13(dec, buf, BUFSIZE-1, 0);
		if (r < 0) FUNC4();
		FUNC19("dec[%d,2]: r: %d, %s\n", i, r, buf);
		r = FUNC13(dec, buf, BUFSIZE-1, 1);
		if (r < 0) FUNC4();
		FUNC19("dec[%d,3]: r: %d, %s\n", i, r, buf);
		r = FUNC13(dec, buf, BUFSIZE-1, 2);
		if (r < 0) FUNC4();
		FUNC19("dec[%d,4]: r: %d, %s\n", i, r, buf);

		din = FUNC2();
		r = FUNC13(din, buf, BUFSIZE-1, 2);
		if (r < 0) FUNC4();
		FUNC19("dec[%d,5]: r: %d, %s\n", i, r, buf);

		r = FUNC16(dec, &l);
		if (r) FUNC4();
		FUNC19("dec[%d,6]: %ld (r: %d)\n", i, r?0L:l, r);
		if (r == 0)
		{
			r = FUNC9(l, din);
			if (r) FUNC4();
			FUNC13(din, buf, BUFSIZE-1, 2);
			q = FUNC6(dec, din);
			FUNC19("dec[%d,7]: %s (r: %d - cmp: %d)\n", i, buf, r, q);
		}

		r = FUNC15(dec, &k);
		if (r) FUNC4();
		FUNC19("dec[%d,8]: %d (r: %d)\n", i, r?0:k, r);
		if (r == 0)
		{
			r = FUNC8(k, din);
			if (r) FUNC4();
			FUNC13(din, buf, BUFSIZE-1, 2);
			q = FUNC6(dec, din);
			FUNC19("dec[%d,9]: %s (r: %d - cmp: %d)\n", i, buf, r, q);
		}

		if (i != 6)
		{
			/* underflow does not work reliable on several archs, so not testing it here */
			/* this is a libc problem since we only call strtod() */
			r = FUNC14(dec, &dbl);
			if (r) FUNC4();
			FUNC19("dec[%d,10]: ", i);
			FUNC18(r ? 0.0 : dbl);
			FUNC19(" (r: %d)\n", r);
		}

		FUNC1(din);
		FUNC19("\n");
	}

	/* add a NULL value */
	dec = FUNC2();
	decarr = FUNC20(decarr, sizeof(decimal *) * (count + 1));
	decarr[count++] = dec;

	FUNC22(CDECIMALTYPE, (char *) decarr[count-1]);
	FUNC19("dec[%d]: %sNULL\n", count-1,
		FUNC21(CDECIMALTYPE, (char *) decarr[count-1]) ? "" : "NOT ");
	FUNC19("dec[0]: %sNULL\n",
		FUNC21(CDECIMALTYPE, (char *) decarr[0]) ? "" : "NOT ");

	r = FUNC13(decarr[3], buf, -1, -1);
	FUNC4(); FUNC19("dectoasc with len == -1: r: %d\n", r);
	r = FUNC13(decarr[3], buf, 0, -1);
	FUNC4(); FUNC19("dectoasc with len == 0: r: %d\n", r);

	for (i = 0; i < count; i++)
	{
		for (j = 0; j < count; j++)
		{
			decimal a, s, m, d;
			int c;
			c = FUNC6(decarr[i], decarr[j]);
			FUNC19("dec[c,%d,%d]: %d\n", i, j, c);

			r = FUNC5(decarr[i], decarr[j], &a);
			if (r)
			{
				FUNC4();
				FUNC19("r: %d\n", r);
			}
			else
			{
				FUNC13(&a, buf, BUFSIZE-1, -1);
				FUNC19("dec[a,%d,%d]: %s\n", i, j, buf);
			}

			r = FUNC12(decarr[i], decarr[j], &s);
			if (r)
			{
				FUNC4();
				FUNC19("r: %d\n", r);
			}
			else
			{
				FUNC13(&s, buf, BUFSIZE-1, -1);
				FUNC19("dec[s,%d,%d]: %s\n", i, j, buf);
			}

			r = FUNC11(decarr[i], decarr[j], &m);
			if (r)
			{
				FUNC4();
				FUNC19("r: %d\n", r);
			}
			else
			{
				FUNC13(&m, buf, BUFSIZE-1, -1);
				FUNC19("dec[m,%d,%d]: %s\n", i, j, buf);
			}

			r = FUNC10(decarr[i], decarr[j], &d);
			if (r)
			{
				FUNC4();
				FUNC19("r: %d\n", r);
			}
			else
			{
				FUNC13(&d, buf, BUFSIZE-1, -1);
				FUNC19("dec[d,%d,%d]: %s\n", i, j, buf);
			}
		}
	}

	for (i = 0; i < count; i++)
	{
		FUNC13(decarr[i], buf, BUFSIZE-1, -1);
		FUNC19("%d: %s\n", i, buf);

		FUNC1(decarr[i]);
	}
	FUNC17(decarr);

	return 0;
}