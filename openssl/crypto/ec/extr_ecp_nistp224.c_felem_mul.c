
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widelimb ;
typedef int* widefelem ;
typedef int* felem ;



__attribute__((used)) static void felem_mul(widefelem out, const felem in1, const felem in2)
{
    out[0] = ((widelimb) in1[0]) * in2[0];
    out[1] = ((widelimb) in1[0]) * in2[1] + ((widelimb) in1[1]) * in2[0];
    out[2] = ((widelimb) in1[0]) * in2[2] + ((widelimb) in1[1]) * in2[1] +
             ((widelimb) in1[2]) * in2[0];
    out[3] = ((widelimb) in1[0]) * in2[3] + ((widelimb) in1[1]) * in2[2] +
             ((widelimb) in1[2]) * in2[1] + ((widelimb) in1[3]) * in2[0];
    out[4] = ((widelimb) in1[1]) * in2[3] + ((widelimb) in1[2]) * in2[2] +
             ((widelimb) in1[3]) * in2[1];
    out[5] = ((widelimb) in1[2]) * in2[3] + ((widelimb) in1[3]) * in2[2];
    out[6] = ((widelimb) in1[3]) * in2[3];
}
