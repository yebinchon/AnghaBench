
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwPeriod; int dwPhase; int lOffset; int dwMagnitude; } ;
typedef TYPE_1__* LPCDIPERIODIC ;


 int TRACE (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void _dump_DIPERIODIC(LPCDIPERIODIC frc)
{
    TRACE("Periodic force has magnitude %d, offset %d, phase %d, period %d\n",
          frc->dwMagnitude, frc->lOffset, frc->dwPhase, frc->dwPeriod);
}
