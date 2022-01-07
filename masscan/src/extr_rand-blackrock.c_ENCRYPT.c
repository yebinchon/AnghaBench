
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int READ (unsigned int,int,int) ;

__attribute__((used)) static inline uint64_t
ENCRYPT(unsigned r, uint64_t a, uint64_t b, uint64_t m, uint64_t seed)
{
    uint64_t L, R;
    unsigned j;
    uint64_t tmp;

    L = m % a;
    R = m / a;

    for (j=1; j<=r; j++) {
        if (j & 1) {
            tmp = (L + READ(j, R, seed)) % a;
        } else {
            tmp = (L + READ(j, R, seed)) % b;
        }
        L = R;
        R = tmp;
    }
    if (r & 1) {
        return a * L + R;
    } else {
        return a * R + L;
    }
}
