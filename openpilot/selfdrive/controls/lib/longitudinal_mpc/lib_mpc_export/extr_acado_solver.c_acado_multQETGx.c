
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_multQETGx( real_t* const E1, real_t* const Gx1, real_t* const H101 )
{
H101[0] += + E1[0]*Gx1[0] + E1[1]*Gx1[3] + E1[2]*Gx1[6];
H101[1] += + E1[0]*Gx1[1] + E1[1]*Gx1[4] + E1[2]*Gx1[7];
H101[2] += + E1[0]*Gx1[2] + E1[1]*Gx1[5] + E1[2]*Gx1[8];
}
