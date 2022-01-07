
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t GETBYTE (int,int) ;
 int* sbox ;

__attribute__((used)) static inline uint64_t
READ(uint64_t r, uint64_t R, uint64_t seed)
{
    uint64_t r0, r1, r2, r3;



    R ^= (seed << r) ^ (seed >> (64 - r));

    r0 = sbox[((((R)>>(0*8))^seed^r)&0xFF)]<< 0 | sbox[((((R)>>(1*8))^seed^r)&0xFF)]<< 8;
    r1 = (sbox[((((R)>>(2*8))^seed^r)&0xFF)]<<16UL | sbox[((((R)>>(3*8))^seed^r)&0xFF)]<<24UL)&0x0ffffFFFFUL;
    r2 = sbox[((((R)>>(4*8))^seed^r)&0xFF)]<< 0 | sbox[((((R)>>(5*8))^seed^r)&0xFF)]<< 8;
    r3 = (sbox[((((R)>>(6*8))^seed^r)&0xFF)]<<16UL | sbox[((((R)>>(7*8))^seed^r)&0xFF)]<<24UL)&0x0ffffFFFFUL;

    R = r0 ^ r1 ^ r2<<23UL ^ r3<<33UL;

    return R;
}
