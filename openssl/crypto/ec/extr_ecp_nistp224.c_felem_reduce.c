
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widelimb ;
typedef int* widefelem ;
typedef int* felem ;



__attribute__((used)) static void felem_reduce(felem out, const widefelem in)
{
    static const widelimb two127p15 = (((widelimb) 1) << 127) +
        (((widelimb) 1) << 15);
    static const widelimb two127m71 = (((widelimb) 1) << 127) -
        (((widelimb) 1) << 71);
    static const widelimb two127m71m55 = (((widelimb) 1) << 127) -
        (((widelimb) 1) << 71) - (((widelimb) 1) << 55);
    widelimb output[5];


    output[0] = in[0] + two127p15;
    output[1] = in[1] + two127m71m55;
    output[2] = in[2] + two127m71;
    output[3] = in[3];
    output[4] = in[4];


    output[4] += in[6] >> 16;
    output[3] += (in[6] & 0xffff) << 40;
    output[2] -= in[6];

    output[3] += in[5] >> 16;
    output[2] += (in[5] & 0xffff) << 40;
    output[1] -= in[5];

    output[2] += output[4] >> 16;
    output[1] += (output[4] & 0xffff) << 40;
    output[0] -= output[4];


    output[3] += output[2] >> 56;
    output[2] &= 0x00ffffffffffffff;

    output[4] = output[3] >> 56;
    output[3] &= 0x00ffffffffffffff;




    output[2] += output[4] >> 16;

    output[1] += (output[4] & 0xffff) << 40;
    output[0] -= output[4];


    output[1] += output[0] >> 56;
    out[0] = output[0] & 0x00ffffffffffffff;

    output[2] += output[1] >> 56;

    out[1] = output[1] & 0x00ffffffffffffff;
    output[3] += output[2] >> 56;

    out[2] = output[2] & 0x00ffffffffffffff;






    out[3] = output[3];
}
