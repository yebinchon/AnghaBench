
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int64_t ;
typedef int bitgen_t ;


 double D1 ;
 double D2 ;
 double MAX (double,double) ;
 int MIN (int,double) ;
 double floor (double) ;
 double log (double) ;
 double logfactorial (double) ;
 double next_double (int *) ;
 double sqrt (double) ;

__attribute__((used)) static int64_t hypergeometric_hrua(bitgen_t *bitgen_state,
                                   int64_t good, int64_t bad, int64_t sample)
{
    int64_t mingoodbad, maxgoodbad, popsize;
    int64_t computed_sample;
    double p, q;
    double mu, var;
    double a, c, b, h, g;
    int64_t m, K;

    popsize = good + bad;
    computed_sample = MIN(sample, popsize - sample);
    mingoodbad = MIN(good, bad);
    maxgoodbad = MAX(good, bad);
    p = ((double) mingoodbad) / popsize;
    q = ((double) maxgoodbad) / popsize;


    mu = computed_sample * p;

    a = mu + 0.5;


    var = ((double)(popsize - computed_sample) *
           computed_sample * p * q / (popsize - 1));

    c = sqrt(var + 0.5);







    h = D1*c + D2;

    m = (int64_t) floor((double)(computed_sample + 1) * (mingoodbad + 1) /
                        (popsize + 2));

    g = (logfactorial(m) +
         logfactorial(mingoodbad - m) +
         logfactorial(computed_sample - m) +
         logfactorial(maxgoodbad - computed_sample + m));
    b = MIN(MIN(computed_sample, mingoodbad) + 1, floor(a + 16*c));

    while (1) {
        double U, V, X, T;
        double gp;
        U = next_double(bitgen_state);
        V = next_double(bitgen_state);
        X = a + h*(V - 0.5) / U;


        if ((X < 0.0) || (X >= b)) {
            continue;
        }

        K = (int64_t) floor(X);

        gp = (logfactorial(K) +
              logfactorial(mingoodbad - K) +
              logfactorial(computed_sample - K) +
              logfactorial(maxgoodbad - computed_sample + K));

        T = g - gp;


        if ((U*(4.0 - U) - 3.0) <= T) {
            break;
        }


        if (U*(U - T) >= 1) {
            continue;
        }

        if (2.0*log(U) <= T) {

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
