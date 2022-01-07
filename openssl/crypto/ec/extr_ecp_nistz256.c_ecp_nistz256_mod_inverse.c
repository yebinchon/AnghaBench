
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int const BN_ULONG ;


 int P256_LIMBS ;
 int ecp_nistz256_mul_mont (int const*,int const*,int const*) ;
 int ecp_nistz256_sqr_mont (int const*,int const*) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void ecp_nistz256_mod_inverse(BN_ULONG r[P256_LIMBS],
                                     const BN_ULONG in[P256_LIMBS])
{




    BN_ULONG p2[P256_LIMBS];
    BN_ULONG p4[P256_LIMBS];
    BN_ULONG p8[P256_LIMBS];
    BN_ULONG p16[P256_LIMBS];
    BN_ULONG p32[P256_LIMBS];
    BN_ULONG res[P256_LIMBS];
    int i;

    ecp_nistz256_sqr_mont(res, in);
    ecp_nistz256_mul_mont(p2, res, in);

    ecp_nistz256_sqr_mont(res, p2);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(p4, res, p2);

    ecp_nistz256_sqr_mont(res, p4);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(p8, res, p4);

    ecp_nistz256_sqr_mont(res, p8);
    for (i = 0; i < 7; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(p16, res, p8);

    ecp_nistz256_sqr_mont(res, p16);
    for (i = 0; i < 15; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(p32, res, p16);

    ecp_nistz256_sqr_mont(res, p32);
    for (i = 0; i < 31; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, in);

    for (i = 0; i < 32 * 4; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p32);

    for (i = 0; i < 32; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p32);

    for (i = 0; i < 16; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p16);

    for (i = 0; i < 8; i++)
        ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p8);

    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p4);

    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, p2);

    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_sqr_mont(res, res);
    ecp_nistz256_mul_mont(res, res, in);

    memcpy(r, res, sizeof(res));
}
