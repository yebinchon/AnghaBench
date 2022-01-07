
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * H; } ;


 TYPE_1__ acadoWorkspace ;

void acado_copyHTH( int iRow, int iCol )
{
acadoWorkspace.H[(iRow * 24 + 96) + (iCol + 4)] = acadoWorkspace.H[(iCol * 24 + 96) + (iRow + 4)];
}
