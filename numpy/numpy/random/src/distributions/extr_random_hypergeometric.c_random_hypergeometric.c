
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bitgen_t ;


 int hypergeometric_hrua (int *,int,int,int) ;
 int hypergeometric_sample (int *,int,int,int) ;

int64_t random_hypergeometric(bitgen_t *bitgen_state,
                              int64_t good, int64_t bad, int64_t sample)
{
    int64_t r;

    if ((sample >= 10) && (sample <= good + bad - 10)) {

        r = hypergeometric_hrua(bitgen_state, good, bad, sample);
    }
    else {

        r = hypergeometric_sample(bitgen_state, good, bad, sample);
    }
    return r;
}
