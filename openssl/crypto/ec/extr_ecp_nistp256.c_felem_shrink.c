
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int* smallfelem ;
typedef int limb ;
typedef int* felem ;


 int bottom63bits ;
 int* kPrime ;
 int* zero110 ;

__attribute__((used)) static void felem_shrink(smallfelem out, const felem in)
{
    felem tmp;
    u64 a, b, mask;
    u64 high, low;
    static const u64 kPrime3Test = 0x7fffffff00000001ul;


    tmp[3] = zero110[3] + in[3] + ((u64)(in[2] >> 64));


    tmp[2] = zero110[2] + (u64)in[2];
    tmp[0] = zero110[0] + in[0];
    tmp[1] = zero110[1] + in[1];






    a = tmp[3] >> 64;
    tmp[3] = (u64)tmp[3];
    tmp[3] -= a;
    tmp[3] += ((limb) a) << 32;


    b = a;
    a = tmp[3] >> 64;
    b += a;
    tmp[3] = (u64)tmp[3];
    tmp[3] -= a;
    tmp[3] += ((limb) a) << 32;






    tmp[0] += b;
    tmp[1] -= (((limb) b) << 32);





    high = (u64)(tmp[3] >> 64);

    high = 0 - high;





    low = (u64)tmp[3];
    mask = 0 - (low >> 63);





    low &= bottom63bits;
    low -= kPrime3Test;

    low = ~low;
    low = 0 - (low >> 63);





    mask = (mask & low) | high;
    tmp[0] -= mask & kPrime[0];
    tmp[1] -= mask & kPrime[1];

    tmp[3] -= mask & kPrime[3];


    tmp[1] += ((u64)(tmp[0] >> 64));
    tmp[0] = (u64)tmp[0];
    tmp[2] += ((u64)(tmp[1] >> 64));
    tmp[1] = (u64)tmp[1];
    tmp[3] += ((u64)(tmp[2] >> 64));
    tmp[2] = (u64)tmp[2];


    out[0] = tmp[0];
    out[1] = tmp[1];
    out[2] = tmp[2];
    out[3] = tmp[3];
}
