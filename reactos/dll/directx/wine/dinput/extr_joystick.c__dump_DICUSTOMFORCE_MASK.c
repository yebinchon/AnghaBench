#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cChannels; int cSamples; int /*<<< orphan*/ * rglForceData; int /*<<< orphan*/  dwSamplePeriod; } ;
typedef  TYPE_1__* LPCDICUSTOMFORCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  dinput ; 

__attribute__((used)) static void FUNC3(LPCDICUSTOMFORCE frc)
{
    unsigned int i;
    FUNC0("Custom force uses %d channels, sample period %d.  Has %d samples at %p.\n",
          frc->cChannels, frc->dwSamplePeriod, frc->cSamples, frc->rglForceData);
    if (frc->cSamples % frc->cChannels != 0)
        FUNC2("Custom force has a non-integral samples-per-channel count!\n");
    if (FUNC1(dinput)) {
        FUNC0("Custom force data (time aligned, axes in order):\n");
        for (i = 1; i <= frc->cSamples; ++i) {
            FUNC0("%d ", frc->rglForceData[i]);
            if (i % frc->cChannels == 0)
                FUNC0("\n");
        }
    }
}