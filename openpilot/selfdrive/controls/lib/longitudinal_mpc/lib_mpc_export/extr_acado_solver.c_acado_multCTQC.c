
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int real_t ;
struct TYPE_2__ {int* H; } ;


 TYPE_1__ acadoWorkspace ;

void acado_multCTQC( real_t* const Gx1, real_t* const Gx2 )
{
acadoWorkspace.H[0] += + Gx1[0]*Gx2[0] + Gx1[3]*Gx2[3] + Gx1[6]*Gx2[6];
acadoWorkspace.H[1] += + Gx1[0]*Gx2[1] + Gx1[3]*Gx2[4] + Gx1[6]*Gx2[7];
acadoWorkspace.H[2] += + Gx1[0]*Gx2[2] + Gx1[3]*Gx2[5] + Gx1[6]*Gx2[8];
acadoWorkspace.H[23] += + Gx1[1]*Gx2[0] + Gx1[4]*Gx2[3] + Gx1[7]*Gx2[6];
acadoWorkspace.H[24] += + Gx1[1]*Gx2[1] + Gx1[4]*Gx2[4] + Gx1[7]*Gx2[7];
acadoWorkspace.H[25] += + Gx1[1]*Gx2[2] + Gx1[4]*Gx2[5] + Gx1[7]*Gx2[8];
acadoWorkspace.H[46] += + Gx1[2]*Gx2[0] + Gx1[5]*Gx2[3] + Gx1[8]*Gx2[6];
acadoWorkspace.H[47] += + Gx1[2]*Gx2[1] + Gx1[5]*Gx2[4] + Gx1[8]*Gx2[7];
acadoWorkspace.H[48] += + Gx1[2]*Gx2[2] + Gx1[5]*Gx2[5] + Gx1[8]*Gx2[8];
}
