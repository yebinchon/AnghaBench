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
typedef  int /*<<< orphan*/  bitgen_t ;
typedef  double RAND_INT_TYPE ;

/* Variables and functions */
 double D1 ; 
 double D2 ; 
 double FUNC0 (double,double) ; 
 double FUNC1 (double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double) ; 

__attribute__((used)) static RAND_INT_TYPE FUNC7(bitgen_t *bitgen_state,
                                                RAND_INT_TYPE good,
                                                RAND_INT_TYPE bad,
                                                RAND_INT_TYPE sample) {
  RAND_INT_TYPE mingoodbad, maxgoodbad, popsize, m, d9;
  double d4, d5, d6, d7, d8, d10, d11;
  RAND_INT_TYPE Z;
  double T, W, X, Y;

  mingoodbad = FUNC1(good, bad);
  popsize = good + bad;
  maxgoodbad = FUNC0(good, bad);
  m = FUNC1(sample, popsize - sample);
  d4 = ((double)mingoodbad) / popsize;
  d5 = 1.0 - d4;
  d6 = m * d4 + 0.5;
  d7 = FUNC6((double)(popsize - m) * sample * d4 * d5 / (popsize - 1) + 0.5);
  d8 = D1 * d7 + D2;
  d9 = (RAND_INT_TYPE)FUNC2((double)(m + 1) * (mingoodbad + 1) / (popsize + 2));
  d10 = (FUNC5(d9 + 1) + FUNC5(mingoodbad - d9 + 1) +
         FUNC5(m - d9 + 1) + FUNC5(maxgoodbad - m + d9 + 1));
  d11 = FUNC1(FUNC1(m, mingoodbad) + 1.0, FUNC2(d6 + 16 * d7));
  /* 16 for 16-decimal-digit precision in D1 and D2 */

  while (1) {
    X = FUNC4(bitgen_state);
    Y = FUNC4(bitgen_state);
    W = d6 + d8 * (Y - 0.5) / X;

    /* fast rejection: */
    if ((W < 0.0) || (W >= d11))
      continue;

    Z = (RAND_INT_TYPE)FUNC2(W);
    T = d10 - (FUNC5(Z + 1) + FUNC5(mingoodbad - Z + 1) +
               FUNC5(m - Z + 1) + FUNC5(maxgoodbad - m + Z + 1));

    /* fast acceptance: */
    if ((X * (4.0 - X) - 3.0) <= T)
      break;

    /* fast rejection: */
    if (X * (X - T) >= 1)
      continue;
    /* log(0.0) is ok here, since always accept */
    if (2.0 * FUNC3(X) <= T)
      break; /* acceptance */
  }

  /* this is a correction to HRUA* by Ivan Frohne in rv.py */
  if (good > bad)
    Z = m - Z;

  /* another fix from rv.py to allow sample to exceed popsize/2 */
  if (m < sample)
    Z = good - Z;

  return Z;
}