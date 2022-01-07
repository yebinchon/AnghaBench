
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;
typedef int BIGNUM ;


 int* ONE ;
 int P256_LIMBS ;
 int bn_get_top (int const*) ;
 int* bn_get_words (int const*) ;
 int is_zero (int) ;

__attribute__((used)) static BN_ULONG is_one(const BIGNUM *z)
{
    BN_ULONG res = 0;
    BN_ULONG *a = bn_get_words(z);

    if (bn_get_top(z) == (P256_LIMBS - P256_LIMBS / 8)) {
        res = a[0] ^ ONE[0];
        res |= a[1] ^ ONE[1];
        res |= a[2] ^ ONE[2];
        res |= a[3] ^ ONE[3];
        if (P256_LIMBS == 8) {
            res |= a[4] ^ ONE[4];
            res |= a[5] ^ ONE[5];
            res |= a[6] ^ ONE[6];




        }
        res = is_zero(res);
    }

    return res;
}
