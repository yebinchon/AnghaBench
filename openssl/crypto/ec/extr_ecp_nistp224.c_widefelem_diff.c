
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widelimb ;
typedef scalar_t__* widefelem ;



__attribute__((used)) static void widefelem_diff(widefelem out, const widefelem in)
{
    static const widelimb two120 = ((widelimb) 1) << 120;
    static const widelimb two120m64 = (((widelimb) 1) << 120) -
        (((widelimb) 1) << 64);
    static const widelimb two120m104m64 = (((widelimb) 1) << 120) -
        (((widelimb) 1) << 104) - (((widelimb) 1) << 64);


    out[0] += two120;
    out[1] += two120m64;
    out[2] += two120m64;
    out[3] += two120;
    out[4] += two120m104m64;
    out[5] += two120m64;
    out[6] += two120m64;

    out[0] -= in[0];
    out[1] -= in[1];
    out[2] -= in[2];
    out[3] -= in[3];
    out[4] -= in[4];
    out[5] -= in[5];
    out[6] -= in[6];
}
