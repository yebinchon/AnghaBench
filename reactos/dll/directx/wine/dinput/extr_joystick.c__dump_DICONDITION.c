
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lDeadBand; int dwNegativeSaturation; int dwPositiveSaturation; int lNegativeCoefficient; int lPositiveCoefficient; int lOffset; } ;
typedef TYPE_1__* LPCDICONDITION ;


 int TRACE (char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _dump_DICONDITION(LPCDICONDITION frc)
{
    TRACE("Condition has offset %d, pos/neg coefficients %d and %d, pos/neg saturations %d and %d, deadband %d\n",
          frc->lOffset, frc->lPositiveCoefficient, frc->lNegativeCoefficient,
          frc->dwPositiveSaturation, frc->dwNegativeSaturation, frc->lDeadBand);
}
