
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hActiveProgram; int hWnd; } ;
typedef int PROGRAM ;
typedef TYPE_1__ PROGGROUP ;


 scalar_t__ IsIconic (int ) ;

PROGRAM* PROGRAM_ActiveProgram(PROGGROUP* hGroup)
{
    if (!hGroup) return ((void*)0);
    if (IsIconic(hGroup->hWnd)) return ((void*)0);
    return hGroup->hActiveProgram;
}
