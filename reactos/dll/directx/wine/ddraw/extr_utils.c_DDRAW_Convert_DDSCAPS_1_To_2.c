
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dwCaps; } ;
struct TYPE_6__ {scalar_t__ dwCaps4; } ;
struct TYPE_7__ {TYPE_1__ u1; scalar_t__ dwCaps3; scalar_t__ dwCaps2; int dwCaps; } ;
typedef TYPE_2__ DDSCAPS2 ;
typedef TYPE_3__ DDSCAPS ;



void DDRAW_Convert_DDSCAPS_1_To_2(const DDSCAPS* pIn, DDSCAPS2* pOut)
{


    pOut->dwCaps = pIn->dwCaps;
    pOut->dwCaps2 = 0;
    pOut->dwCaps3 = 0;
    pOut->u1.dwCaps4 = 0;
}
