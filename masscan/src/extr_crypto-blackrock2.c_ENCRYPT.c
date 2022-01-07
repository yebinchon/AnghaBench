
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ROUND (unsigned int,int,int) ;
 int UNUSEDPARM (int) ;

__attribute__((used)) static inline uint64_t
ENCRYPT(unsigned r, uint64_t a_bits, uint64_t a_mask, uint64_t b_bits, uint64_t b_mask, uint64_t m, uint64_t seed)
{
    uint64_t L, R;
    unsigned j = 1;
    uint64_t tmp;

    UNUSEDPARM(b_bits);

    L = m & a_mask;
    R = m >> a_bits;

    for (j=1; j<=r; j++) {
        tmp = (L + ROUND(j, R, seed)) & a_mask;
        L = R;
        R = tmp;
        j++;

        tmp = (L + ROUND(j, R, seed)) & b_mask;
        L = R;
        R = tmp;
    }

    if ((j-1) & 1) {
        return (L << (a_bits)) + R;
    } else {
        return (R << (a_bits)) + L;
    }
}
