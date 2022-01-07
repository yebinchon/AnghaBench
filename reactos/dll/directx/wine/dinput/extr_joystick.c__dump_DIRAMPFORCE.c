
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lEnd; int lStart; } ;
typedef TYPE_1__* LPCDIRAMPFORCE ;


 int TRACE (char*,int ,int ) ;

__attribute__((used)) static void _dump_DIRAMPFORCE(LPCDIRAMPFORCE frc)
{
    TRACE("Ramp force has start %d, end %d\n",
          frc->lStart, frc->lEnd);
}
