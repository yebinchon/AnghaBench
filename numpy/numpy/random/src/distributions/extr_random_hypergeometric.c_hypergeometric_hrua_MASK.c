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
typedef  double int64_t ;
typedef  int /*<<< orphan*/  bitgen_t ;

/* Variables and functions */
 double D1 ; 
 double D2 ; 
 double FUNC0 (double,double) ; 
 int FUNC1 (int,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 double FUNC6 (double) ; 

__attribute__((used)) static int64_t FUNC7(bitgen_t *bitgen_state,
                                   int64_t good, int64_t bad, int64_t sample)
{
    int64_t mingoodbad, maxgoodbad, popsize;
    int64_t computed_sample;
    double p, q;
    double mu, var;
    double a, c, b, h, g;
    int64_t m, K;

    popsize = good + bad;
    computed_sample = FUNC1(sample, popsize - sample);
    mingoodbad = FUNC1(good, bad);
    maxgoodbad = FUNC0(good, bad);

    /*
     *  Variables that do not match Stadlober (1989)
     *    Here               Stadlober
     *    ----------------   ---------
     *    mingoodbad            M
     *    popsize               N
     *    computed_sample       n
     */

    p = ((double) mingoodbad) / popsize;
    q = ((double) maxgoodbad) / popsize;

    // mu is the mean of the distribution.
    mu = computed_sample * p;

    a = mu + 0.5;

    // var is the variance of the distribution.
    var = ((double)(popsize - computed_sample) *
           computed_sample * p * q / (popsize - 1));

    c = FUNC6(var + 0.5);

    /*
     *  h is 2*s_hat (See Stadlober's theses (1989), Eq. (5.17); or
     *  Stadlober (1990), Eq. 8).  s_hat is the scale of the "table mountain"
     *  function that dominates the scaled hypergeometric PMF ("scaled" means
     *  normalized to have a maximum value of 1).
     */
    h = D1*c + D2;

    m = (int64_t) FUNC2((double)(computed_sample + 1) * (mingoodbad + 1) /
                        (popsize + 2));

    g = (FUNC4(m) +
         FUNC4(mingoodbad - m) +
         FUNC4(computed_sample - m) +
         FUNC4(maxgoodbad - computed_sample + m));

    /*
     *  b is the upper bound for random samples:
     *  ... min(computed_sample, mingoodbad) + 1 is the length of the support.
     *  ... floor(a + 16*c) is 16 standard deviations beyond the mean.
     *
     *  The idea behind the second upper bound is that values that far out in
     *  the tail have negligible probabilities.
     *
     *  There is a comment in a previous version of this algorithm that says
     *      "16 for 16-decimal-digit precision in D1 and D2",
     *  but there is no documented justification for this value.  A lower value
     *  might work just as well, but I've kept the value 16 here.
     */
    b = FUNC1(FUNC1(computed_sample, mingoodbad) + 1, FUNC2(a + 16*c));

    while (1) {
        double U, V, X, T;
        double gp;
        U = FUNC5(bitgen_state);
        V = FUNC5(bitgen_state);  // "U star" in Stadlober (1989)
        X = a + h*(V - 0.5) / U;

        // fast rejection:
        if ((X < 0.0) || (X >= b)) {
            continue;
        }

        K = (int64_t) FUNC2(X);

        gp = (FUNC4(K) +
              FUNC4(mingoodbad - K) +
              FUNC4(computed_sample - K) +
              FUNC4(maxgoodbad - computed_sample + K));

        T = g - gp;

        // fast acceptance:
        if ((U*(4.0 - U) - 3.0) <= T) {
            break;
        }

        // fast rejection:
        if (U*(U - T) >= 1) {
            continue;
        }

        if (2.0*FUNC3(U) <= T) {
            // acceptance
            break;  
        }
    }

    if (good > bad) {
        K = computed_sample - K;
    }

    if (computed_sample < sample) {
        K = good - K;
    }

    return K;
}