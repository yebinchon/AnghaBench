
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;
typedef int* felem ;


 int bottom57bits ;
 int bottom58bits ;
 int felem_assign (int*,int* const) ;
 int* kPrime ;

__attribute__((used)) static void felem_contract(felem out, const felem in)
{
    limb is_p, is_greater, sign;
    static const limb two58 = ((limb) 1) << 58;

    felem_assign(out, in);

    out[0] += out[8] >> 57;
    out[8] &= bottom57bits;

    out[1] += out[0] >> 58;
    out[0] &= bottom58bits;
    out[2] += out[1] >> 58;
    out[1] &= bottom58bits;
    out[3] += out[2] >> 58;
    out[2] &= bottom58bits;
    out[4] += out[3] >> 58;
    out[3] &= bottom58bits;
    out[5] += out[4] >> 58;
    out[4] &= bottom58bits;
    out[6] += out[5] >> 58;
    out[5] &= bottom58bits;
    out[7] += out[6] >> 58;
    out[6] &= bottom58bits;
    out[8] += out[7] >> 58;
    out[7] &= bottom58bits;
    is_p = out[0] ^ kPrime[0];
    is_p |= out[1] ^ kPrime[1];
    is_p |= out[2] ^ kPrime[2];
    is_p |= out[3] ^ kPrime[3];
    is_p |= out[4] ^ kPrime[4];
    is_p |= out[5] ^ kPrime[5];
    is_p |= out[6] ^ kPrime[6];
    is_p |= out[7] ^ kPrime[7];
    is_p |= out[8] ^ kPrime[8];

    is_p--;
    is_p &= is_p << 32;
    is_p &= is_p << 16;
    is_p &= is_p << 8;
    is_p &= is_p << 4;
    is_p &= is_p << 2;
    is_p &= is_p << 1;
    is_p = 0 - (is_p >> 63);
    is_p = ~is_p;



    out[0] &= is_p;
    out[1] &= is_p;
    out[2] &= is_p;
    out[3] &= is_p;
    out[4] &= is_p;
    out[5] &= is_p;
    out[6] &= is_p;
    out[7] &= is_p;
    out[8] &= is_p;





    is_greater = out[8] >> 57;
    is_greater |= is_greater << 32;
    is_greater |= is_greater << 16;
    is_greater |= is_greater << 8;
    is_greater |= is_greater << 4;
    is_greater |= is_greater << 2;
    is_greater |= is_greater << 1;
    is_greater = 0 - (is_greater >> 63);

    out[0] -= kPrime[0] & is_greater;
    out[1] -= kPrime[1] & is_greater;
    out[2] -= kPrime[2] & is_greater;
    out[3] -= kPrime[3] & is_greater;
    out[4] -= kPrime[4] & is_greater;
    out[5] -= kPrime[5] & is_greater;
    out[6] -= kPrime[6] & is_greater;
    out[7] -= kPrime[7] & is_greater;
    out[8] -= kPrime[8] & is_greater;


    sign = -(out[0] >> 63);
    out[0] += (two58 & sign);
    out[1] -= (1 & sign);
    sign = -(out[1] >> 63);
    out[1] += (two58 & sign);
    out[2] -= (1 & sign);
    sign = -(out[2] >> 63);
    out[2] += (two58 & sign);
    out[3] -= (1 & sign);
    sign = -(out[3] >> 63);
    out[3] += (two58 & sign);
    out[4] -= (1 & sign);
    sign = -(out[4] >> 63);
    out[4] += (two58 & sign);
    out[5] -= (1 & sign);
    sign = -(out[0] >> 63);
    out[5] += (two58 & sign);
    out[6] -= (1 & sign);
    sign = -(out[6] >> 63);
    out[6] += (two58 & sign);
    out[7] -= (1 & sign);
    sign = -(out[7] >> 63);
    out[7] += (two58 & sign);
    out[8] -= (1 & sign);
    sign = -(out[5] >> 63);
    out[5] += (two58 & sign);
    out[6] -= (1 & sign);
    sign = -(out[6] >> 63);
    out[6] += (two58 & sign);
    out[7] -= (1 & sign);
    sign = -(out[7] >> 63);
    out[7] += (two58 & sign);
    out[8] -= (1 & sign);
}
