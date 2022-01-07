
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ROUND (unsigned int,int,int) ;

__attribute__((used)) static inline uint64_t
DECRYPT(unsigned r, uint64_t a, uint64_t b, uint64_t m, uint64_t seed)
{
    uint64_t L, R;
    unsigned j;
    uint64_t tmp;

    if (r & 1) {
        R = m % a;
        L = m / a;
    } else {
        L = m % a;
        R = m / a;
    }

    for (j=r; j>=1; j--) {
        if (j & 1) {
            tmp = ROUND(j, L, seed);
            if (tmp > R) {
                tmp = (tmp - R);
                tmp = a - (tmp%a);
                if (tmp == a)
                    tmp = 0;
            } else {
                tmp = (R - tmp);
                tmp %= a;
            }
        } else {
            tmp = ROUND(j, L, seed);
            if (tmp > R) {
                tmp = (tmp - R);
                tmp = b - (tmp%b);
                if (tmp == b)
                    tmp = 0;
            } else {
                tmp = (R - tmp);
                tmp %= b;
            }
        }
        R = L;
        L = tmp;
    }
    return a * R + L;
}
