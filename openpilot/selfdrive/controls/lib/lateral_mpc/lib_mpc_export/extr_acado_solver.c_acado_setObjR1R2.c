
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_setObjR1R2( real_t* const tmpFu, real_t* const tmpObjS, real_t* const tmpR1, real_t* const tmpR2 )
{
tmpR2[0] = + tmpFu[0]*tmpObjS[0] + tmpFu[1]*tmpObjS[5] + tmpFu[2]*tmpObjS[10] + tmpFu[3]*tmpObjS[15] + tmpFu[4]*tmpObjS[20];
tmpR2[1] = + tmpFu[0]*tmpObjS[1] + tmpFu[1]*tmpObjS[6] + tmpFu[2]*tmpObjS[11] + tmpFu[3]*tmpObjS[16] + tmpFu[4]*tmpObjS[21];
tmpR2[2] = + tmpFu[0]*tmpObjS[2] + tmpFu[1]*tmpObjS[7] + tmpFu[2]*tmpObjS[12] + tmpFu[3]*tmpObjS[17] + tmpFu[4]*tmpObjS[22];
tmpR2[3] = + tmpFu[0]*tmpObjS[3] + tmpFu[1]*tmpObjS[8] + tmpFu[2]*tmpObjS[13] + tmpFu[3]*tmpObjS[18] + tmpFu[4]*tmpObjS[23];
tmpR2[4] = + tmpFu[0]*tmpObjS[4] + tmpFu[1]*tmpObjS[9] + tmpFu[2]*tmpObjS[14] + tmpFu[3]*tmpObjS[19] + tmpFu[4]*tmpObjS[24];
tmpR1[0] = + tmpR2[0]*tmpFu[0] + tmpR2[1]*tmpFu[1] + tmpR2[2]*tmpFu[2] + tmpR2[3]*tmpFu[3] + tmpR2[4]*tmpFu[4];
}
