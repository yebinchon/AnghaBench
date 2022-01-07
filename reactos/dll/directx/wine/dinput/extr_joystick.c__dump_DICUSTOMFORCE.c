
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cChannels; int cSamples; int * rglForceData; int dwSamplePeriod; } ;
typedef TYPE_1__* LPCDICUSTOMFORCE ;


 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WARN (char*) ;
 int dinput ;

__attribute__((used)) static void _dump_DICUSTOMFORCE(LPCDICUSTOMFORCE frc)
{
    unsigned int i;
    TRACE("Custom force uses %d channels, sample period %d.  Has %d samples at %p.\n",
          frc->cChannels, frc->dwSamplePeriod, frc->cSamples, frc->rglForceData);
    if (frc->cSamples % frc->cChannels != 0)
        WARN("Custom force has a non-integral samples-per-channel count!\n");
    if (TRACE_ON(dinput)) {
        TRACE("Custom force data (time aligned, axes in order):\n");
        for (i = 1; i <= frc->cSamples; ++i) {
            TRACE("%d ", frc->rglForceData[i]);
            if (i % frc->cChannels == 0)
                TRACE("\n");
        }
    }
}
