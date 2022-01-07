
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;


 int bn_GF2m_mul_1x1 (int*,int*,int const,int const) ;

__attribute__((used)) static void bn_GF2m_mul_2x2(BN_ULONG *r, const BN_ULONG a1, const BN_ULONG a0,
                            const BN_ULONG b1, const BN_ULONG b0)
{
    BN_ULONG m1, m0;

    bn_GF2m_mul_1x1(r + 3, r + 2, a1, b1);
    bn_GF2m_mul_1x1(r + 1, r, a0, b0);
    bn_GF2m_mul_1x1(&m1, &m0, a0 ^ a1, b0 ^ b1);

    r[2] ^= m1 ^ r[1] ^ r[3];
    r[1] = r[3] ^ r[2] ^ r[0] ^ m1 ^ m0;
}
