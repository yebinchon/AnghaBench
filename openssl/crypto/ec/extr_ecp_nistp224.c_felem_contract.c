
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;
typedef int int64_t ;
typedef int* felem ;



__attribute__((used)) static void felem_contract(felem out, const felem in)
{
    static const int64_t two56 = ((limb) 1) << 56;


    int64_t tmp[4], a;
    tmp[0] = in[0];
    tmp[1] = in[1];
    tmp[2] = in[2];
    tmp[3] = in[3];

    a = (in[3] >> 56);
    tmp[0] -= a;
    tmp[1] += a << 40;
    tmp[3] &= 0x00ffffffffffffff;




    a = ((in[3] & in[2] & (in[1] | 0x000000ffffffffff)) + 1) |
        (((int64_t) (in[0] + (in[1] & 0x000000ffffffffff)) - 1) >> 63);
    a &= 0x00ffffffffffffff;

    a = (a - 1) >> 63;

    tmp[3] &= a ^ 0xffffffffffffffff;
    tmp[2] &= a ^ 0xffffffffffffffff;
    tmp[1] &= (a ^ 0xffffffffffffffff) | 0x000000ffffffffff;
    tmp[0] -= 1 & a;





    a = tmp[0] >> 63;
    tmp[0] += two56 & a;
    tmp[1] -= 1 & a;


    tmp[2] += tmp[1] >> 56;
    tmp[1] &= 0x00ffffffffffffff;

    tmp[3] += tmp[2] >> 56;
    tmp[2] &= 0x00ffffffffffffff;


    out[0] = tmp[0];
    out[1] = tmp[1];
    out[2] = tmp[2];
    out[3] = tmp[3];
}
