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
typedef  int DIGIT_T ;

/* Variables and functions */
 unsigned int BITS_PER_DIGIT ; 
 int HIBITMASK ; 
 int MAX_DIGIT ; 
 scalar_t__ FUNC0 (int,int,int,int) ; 
 int FUNC1 (int*,int*,int*,unsigned int) ; 
 int FUNC2 (int*,int*,unsigned int) ; 
 int FUNC3 (int,int*,int*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,unsigned int) ; 
 int FUNC7 (int*,int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,unsigned int,int) ; 
 int FUNC9 (int*,int*,int,unsigned int) ; 
 scalar_t__ FUNC10 (int*,unsigned int) ; 
 int FUNC11 (int*,int*,int*,int) ; 

__attribute__((used)) static int
FUNC12(DIGIT_T* q, DIGIT_T* r, DIGIT_T* u, unsigned int udigits,
         DIGIT_T* v, unsigned int vdigits)
{ /* Computes quotient q = u / v and remainder r = u mod v
     where q, r, u are multiple precision digits
     all of udigits and the divisor v is vdigits.

     Ref: Knuth Vol 2 Ch 4.3.1 p 272 Algorithm D.

     Do without extra storage space, i.e. use r[] for
     normalised u[], unnormalise v[] at end, and cope with
     extra digit Uj+n added to u after normalisation.

     WARNING: this trashes q and r first, so cannot do
     u = u / v or v = u mod v. */
  unsigned int shift;
  int n;
  int m;
  int j;
  int qhatOK;
  int cmp;
  DIGIT_T bitmask;
  DIGIT_T overflow;
  DIGIT_T qhat;
  DIGIT_T rhat;
  DIGIT_T t[2];
  DIGIT_T* uu;
  DIGIT_T* ww;

  /* Clear q and r */
  FUNC6(q, udigits);
  FUNC6(r, udigits);
  /* Work out exact sizes of u and v */
  n = (int)FUNC10(v, vdigits);
  m = (int)FUNC10(u, udigits);
  m -= n;
  /* Catch special cases */
  if (n == 0)
  {
    return -1;	/* Error: divide by zero */
  }
  if (n == 1)
  { /* Use short division instead */
    r[0] = FUNC9(q, u, v[0], udigits);
    return 0;
  }
  if (m < 0)
  { /* v > u, so just set q = 0 and r = u */
    FUNC5(r, u, udigits);
    return 0;
  }
  if (m == 0)
  { /* u and v are the same length */
    cmp = FUNC2(u, v, (unsigned int)n);
    if (cmp < 0)
    { /* v > u, as above */
      FUNC5(r, u, udigits);
      return 0;
    }
    else if (cmp == 0)
    { /* v == u, so set q = 1 and r = 0 */
      FUNC4(q, 1, udigits);
      return 0;
    }
  }
  /* In Knuth notation, we have:
     Given
     u = (Um+n-1 ... U1U0)
     v = (Vn-1 ... V1V0)
     Compute
     q = u/v = (QmQm-1 ... Q0)
     r = u mod v = (Rn-1 ... R1R0) */
  /* Step D1. Normalise */
  /* Requires high bit of Vn-1
     to be set, so find most signif. bit then shift left,
     i.e. d = 2^shift, u' = u * d, v' = v * d. */
  bitmask = HIBITMASK;
  for (shift = 0; shift < BITS_PER_DIGIT; shift++)
  {
    if (v[n - 1] & bitmask)
    {
      break;
    }
    bitmask >>= 1;
  }
  /* Normalise v in situ - NB only shift non-zero digits */
  overflow = FUNC7(v, v, shift, n);
  /* Copy normalised dividend u*d into r */
  overflow = FUNC7(r, u, shift, n + m);
  uu = r; /* Use ptr to keep notation constant */
  t[0] = overflow; /* New digit Um+n */
  /* Step D2. Initialise j. Set j = m */
  for (j = m; j >= 0; j--)
  {
    /* Step D3. Calculate Qhat = (b.Uj+n + Uj+n-1)/Vn-1 */
    qhatOK = 0;
    t[1] = t[0]; /* This is Uj+n */
    t[0] = uu[j+n-1];
    overflow = FUNC11(&qhat, &rhat, t, v[n - 1]);
    /* Test Qhat */
    if (overflow)
    { /* Qhat = b */
      qhat = MAX_DIGIT;
      rhat = uu[j + n - 1];
      rhat += v[n - 1];
      if (rhat < v[n - 1]) /* Overflow */
      {
        qhatOK = 1;
      }
    }
    if (!qhatOK && FUNC0(qhat, rhat, v[n - 2], uu[j + n - 2]))
    { /* Qhat.Vn-2 > b.Rhat + Uj+n-2 */
      qhat--;
      rhat += v[n - 1];
      if (!(rhat < v[n - 1]))
      {
        if (FUNC0(qhat, rhat, v[n - 2], uu[j + n - 2]))
        {
          qhat--;
        }
      }
    }
    /* Step D4. Multiply and subtract */
    ww = &uu[j];
    overflow = FUNC3(t[1], ww, v, qhat, (unsigned int)n);
    /* Step D5. Test remainder. Set Qj = Qhat */
    q[j] = qhat;
    if (overflow)
    { /* Step D6. Add back if D4 was negative */
      q[j]--;
      overflow = FUNC1(ww, ww, v, (unsigned int)n);
    }
    t[0] = uu[j + n - 1]; /* Uj+n on next round */
  } /* Step D7. Loop on j */
  /* Clear high digits in uu */
  for (j = n; j < m+n; j++)
  {
    uu[j] = 0;
  }
  /* Step D8. Unnormalise. */
  FUNC8(r, r, shift, n);
  FUNC8(v, v, shift, n);
  return 0;
}