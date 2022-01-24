#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int* digits; int used; int /*<<< orphan*/  alloc; void* sign; } ;
typedef  TYPE_1__ mpz_t ;
typedef  int mp_word ;
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int* FUNC5 (TYPE_1__*) ; 
 int MP_DIGIT_BIT ; 
 int MP_DIGIT_MAX ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 int FUNC6 (TYPE_1__*) ; 
 void* MP_ZPOS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int*,int) ; 
 int FUNC14 (TYPE_1__*,int) ; 
 int FUNC15 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int*,int*,int*,int,int) ; 

__attribute__((used)) static mp_result
FUNC20(mp_int u, mp_int v)
{
	/* Force signs to positive */
	u->sign = MP_ZPOS;
	v->sign = MP_ZPOS;

	/* Use simple division algorithm when v is only one digit long */
	if (FUNC6(v) == 1)
	{
		mp_digit	d,
					rem;

		d = v->digits[0];
		rem = FUNC14(u, d);
		FUNC12(v, rem);
		return MP_OK;
	}

	/*
	 * Algorithm D
	 *
	 * The n and m variables are defined as used by Knuth. u is an n digit
	 * number with digits u_{n-1}..u_0. v is an n+m digit number with digits
	 * from v_{m+n-1}..v_0. We require that n > 1 and m >= 0
	 */
	mp_size		n = FUNC6(v);
	mp_size		m = FUNC6(u) - n;

	FUNC10(n > 1);
	/* assert(m >= 0) follows because m is unsigned. */

	/*
	 * D1: Normalize. The normalization step provides the necessary condition
	 * for Theorem B, which states that the quotient estimate for q_j, call it
	 * qhat
	 *
	 * qhat = u_{j+n}u_{j+n-1} / v_{n-1}
	 *
	 * is bounded by
	 *
	 * qhat - 2 <= q_j <= qhat.
	 *
	 * That is, qhat is always greater than the actual quotient digit q, and
	 * it is never more than two larger than the actual quotient digit.
	 */
	int			k = FUNC15(u, v);

	/*
	 * Extend size of u by one if needed.
	 *
	 * The algorithm begins with a value of u that has one more digit of
	 * input. The normalization step sets u_{m+n}..u_0 = 2^k * u_{m+n-1}..u_0.
	 * If the multiplication did not increase the number of digits of u, we
	 * need to add a leading zero here.
	 */
	if (k == 0 || FUNC6(u) != m + n + 1)
	{
		if (!FUNC16(u, m + n + 1))
			return MP_MEMORY;
		u->digits[m + n] = 0;
		u->used = m + n + 1;
	}

	/*
	 * Add a leading 0 to v.
	 *
	 * The multiplication in step D4 multiplies qhat * 0v_{n-1}..v_0.  We need
	 * to add the leading zero to v here to ensure that the multiplication
	 * will produce the full n+1 digit result.
	 */
	if (!FUNC16(v, n + 1))
		return MP_MEMORY;
	v->digits[n] = 0;

	/*
	 * Initialize temporary variables q and t. q allocates space for m+1
	 * digits to store the quotient digits t allocates space for n+1 digits to
	 * hold the result of q_j*v
	 */
	FUNC2(2);
	FUNC7(FUNC3(FUNC8(0), m + 1));
	FUNC7(FUNC3(FUNC8(1), n + 1));

	/* D2: Initialize j */
	int			j = m;
	mpz_t		r;

	r.digits = FUNC5(u) + j;	/* The contents of r are shared with u */
	r.used = n + 1;
	r.sign = MP_ZPOS;
	r.alloc = FUNC4(u);
	FUNC9(FUNC8(1)->digits, FUNC8(1)->alloc);

	/* Calculate the m+1 digits of the quotient result */
	for (; j >= 0; j--)
	{
		/* D3: Calculate q' */
		/* r->digits is aligned to position j of the number u */
		mp_word		pfx,
					qhat;

		pfx = r.digits[n];
		pfx <<= MP_DIGIT_BIT / 2;
		pfx <<= MP_DIGIT_BIT / 2;
		pfx |= r.digits[n - 1]; /* pfx = u_{j+n}{j+n-1} */

		qhat = pfx / v->digits[n - 1];

		/*
		 * Check to see if qhat > b, and decrease qhat if so. Theorem B
		 * guarantess that qhat is at most 2 larger than the actual value, so
		 * it is possible that qhat is greater than the maximum value that
		 * will fit in a digit
		 */
		if (qhat > MP_DIGIT_MAX)
			qhat = MP_DIGIT_MAX;

		/*
		 * D4,D5,D6: Multiply qhat * v and test for a correct value of q
		 *
		 * We proceed a bit different than the way described by Knuth. This
		 * way is simpler but less efficent. Instead of doing the multiply and
		 * subtract then checking for underflow, we first do the multiply of
		 * qhat * v and see if it is larger than the current remainder r. If
		 * it is larger, we decrease qhat by one and try again. We may need to
		 * decrease qhat one more time before we get a value that is smaller
		 * than r.
		 *
		 * This way is less efficent than Knuth becuase we do more multiplies,
		 * but we do not need to worry about underflow this way.
		 */
		/* t = qhat * v */
		FUNC13(FUNC5(v), (mp_digit) qhat, FUNC8(1)->digits, n + 1);
		FUNC8(1)->used = n + 1;
		FUNC0(FUNC8(1));

		/* Clamp r for the comparison. Comparisons do not like leading zeros. */
		FUNC0(&r);
		if (FUNC18(FUNC8(1), &r) > 0)
		{						/* would the remainder be negative? */
			qhat -= 1;			/* try a smaller q */
			FUNC13(FUNC5(v), (mp_digit) qhat, FUNC8(1)->digits, n + 1);
			FUNC8(1)->used = n + 1;
			FUNC0(FUNC8(1));
			if (FUNC18(FUNC8(1), &r) > 0)
			{					/* would the remainder be negative? */
				FUNC10(qhat > 0);
				qhat -= 1;		/* try a smaller q */
				FUNC13(FUNC5(v), (mp_digit) qhat, FUNC8(1)->digits, n + 1);
				FUNC8(1)->used = n + 1;
				FUNC0(FUNC8(1));
			}
			FUNC10(FUNC18(FUNC8(1), &r) <= 0 && "The mathematics failed us.");
		}

		/*
		 * Unclamp r. The D algorithm expects r = u_{j+n}..u_j to always be
		 * n+1 digits long.
		 */
		r.used = n + 1;

		/*
		 * D4: Multiply and subtract
		 *
		 * Note: The multiply was completed above so we only need to subtract
		 * here.
		 */
		FUNC19(r.digits, FUNC8(1)->digits, r.digits, r.used, FUNC8(1)->used);

		/*
		 * D5: Test remainder
		 *
		 * Note: Not needed because we always check that qhat is the correct
		 * value before performing the subtract.  Value cast to mp_digit to
		 * prevent warning, qhat has been clamped to MP_DIGIT_MAX
		 */
		FUNC8(0)->digits[j] = (mp_digit) qhat;

		/*
		 * D6: Add back Note: Not needed because we always check that qhat is
		 * the correct value before performing the subtract.
		 */

		/* D7: Loop on j */
		r.digits--;
		FUNC9(FUNC8(1)->digits, FUNC8(1)->alloc);
	}

	/* Get rid of leading zeros in q */
	FUNC8(0)->used = m + 1;
	FUNC0(FUNC8(0));

	/* Denormalize the remainder */
	FUNC0(u);					/* use u here because the r.digits pointer is
								 * off-by-one */
	if (k != 0)
		FUNC17(u, k);

	FUNC11(u, v);			/* ok:  0 <= r < v */
	FUNC11(FUNC8(0), u);	/* ok:  q <= u     */

	FUNC1();
	return MP_OK;
}