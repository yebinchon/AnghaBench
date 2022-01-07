
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ neg; } ;
typedef int BN_CTX ;
typedef int BNRAND_FLAG ;
typedef TYPE_1__ BIGNUM ;


 int BN_F_BNRAND_RANGE ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int BN_R_INVALID_RANGE ;
 int BN_R_TOO_MANY_ITERATIONS ;
 scalar_t__ BN_cmp (TYPE_1__*,TYPE_1__ const*) ;
 int BN_is_bit_set (TYPE_1__ const*,int) ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 int BN_num_bits (TYPE_1__ const*) ;
 int BN_sub (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 int BN_zero (TYPE_1__*) ;
 int BNerr (int ,int ) ;
 int bn_check_top (TYPE_1__*) ;
 int bnrand (int ,TYPE_1__*,int,int ,int ,int *) ;

__attribute__((used)) static int bnrand_range(BNRAND_FLAG flag, BIGNUM *r, const BIGNUM *range,
                        BN_CTX *ctx)
{
    int n;
    int count = 100;

    if (range->neg || BN_is_zero(range)) {
        BNerr(BN_F_BNRAND_RANGE, BN_R_INVALID_RANGE);
        return 0;
    }

    n = BN_num_bits(range);



    if (n == 1)
        BN_zero(r);
    else if (!BN_is_bit_set(range, n - 2) && !BN_is_bit_set(range, n - 3)) {




        do {
            if (!bnrand(flag, r, n + 1, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY,
                        ctx))
                return 0;







            if (BN_cmp(r, range) >= 0) {
                if (!BN_sub(r, r, range))
                    return 0;
                if (BN_cmp(r, range) >= 0)
                    if (!BN_sub(r, r, range))
                        return 0;
            }

            if (!--count) {
                BNerr(BN_F_BNRAND_RANGE, BN_R_TOO_MANY_ITERATIONS);
                return 0;
            }

        }
        while (BN_cmp(r, range) >= 0);
    } else {
        do {

            if (!bnrand(flag, r, n, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, ctx))
                return 0;

            if (!--count) {
                BNerr(BN_F_BNRAND_RANGE, BN_R_TOO_MANY_ITERATIONS);
                return 0;
            }
        }
        while (BN_cmp(r, range) >= 0);
    }

    bn_check_top(r);
    return 1;
}
