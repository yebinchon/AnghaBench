
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int* PRIMEFACTORS ;



__attribute__((used)) static uint64_t
has_factors_in_common(uint64_t c, PRIMEFACTORS factors)
{
    unsigned i;

    for (i=0; factors[i]; i++) {
        if ((c % factors[i]) == 0)
            return factors[i];
    }
    return 0;
}
