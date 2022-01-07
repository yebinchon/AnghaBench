
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_rhs_forw(const real_t* in, real_t* out)
{
const real_t* xd = in;
const real_t* u = in + 15;


out[0] = xd[1];
out[1] = xd[2];
out[2] = u[0];
out[3] = xd[6];
out[4] = xd[7];
out[5] = xd[8];
out[6] = xd[9];
out[7] = xd[10];
out[8] = xd[11];
out[9] = (real_t)(0.0000000000000000e+00);
out[10] = (real_t)(0.0000000000000000e+00);
out[11] = (real_t)(0.0000000000000000e+00);
out[12] = xd[13];
out[13] = xd[14];
out[14] = (real_t)(1.0000000000000000e+00);
}
