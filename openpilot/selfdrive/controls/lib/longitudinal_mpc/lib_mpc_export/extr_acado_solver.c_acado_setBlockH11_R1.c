
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int real_t ;
struct TYPE_2__ {int * H; } ;


 TYPE_1__ acadoWorkspace ;

void acado_setBlockH11_R1( int iRow, int iCol, real_t* const R11 )
{
acadoWorkspace.H[(iRow * 23 + 69) + (iCol + 3)] = R11[0];
}
