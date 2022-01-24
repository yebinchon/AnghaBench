#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_16__ {int cControls; int /*<<< orphan*/  dwLineID; } ;
struct TYPE_15__ {int /*<<< orphan*/  dwControlType; int /*<<< orphan*/  fdwControl; int /*<<< orphan*/  szName; } ;
struct TYPE_14__ {int cbStruct; size_t cControls; int cbmxctrl; TYPE_3__* pamxctrl; int /*<<< orphan*/  dwLineID; } ;
struct TYPE_13__ {scalar_t__ hmx; } ;
typedef  int /*<<< orphan*/ * PUINT ;
typedef  TYPE_1__* PSND_MIXER ;
typedef  scalar_t__ MMRESULT ;
typedef  TYPE_2__ MIXERLINECONTROLS ;
typedef  TYPE_3__ MIXERCONTROL ;
typedef  int /*<<< orphan*/  LineControls ;
typedef  TYPE_4__* LPMIXERLINE ;
typedef  TYPE_3__* LPMIXERCONTROL ;
typedef  int /*<<< orphan*/  HMIXEROBJ ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  MIXER_GETLINECONTROLSF_ALL ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

BOOL
FUNC6(PSND_MIXER Mixer,
                      PUINT DisplayControls,
                      LPMIXERLINE LineInfo,
                      LPMIXERCONTROL *Controls)
{
    if (LineInfo->cControls > 0)
    {
        *Controls = (MIXERCONTROL*) FUNC2(FUNC1(),
                              HEAP_ZERO_MEMORY,
                              LineInfo->cControls * sizeof(MIXERCONTROL));
        if (*Controls != NULL)
        {
            MIXERLINECONTROLS LineControls;
            MMRESULT Result;
            UINT j;

            LineControls.cbStruct = sizeof(LineControls);
            LineControls.dwLineID = LineInfo->dwLineID;
            LineControls.cControls = LineInfo->cControls;
            LineControls.cbmxctrl = sizeof(MIXERCONTROL);
            LineControls.pamxctrl = (MIXERCONTROL*)(*Controls);

            Result = FUNC5((HMIXEROBJ)Mixer->hmx,
                                          &LineControls,
                                          MIXER_GETLINECONTROLSF_ALL);
            if (Result == MMSYSERR_NOERROR)
            {
                for (j = 0; j < LineControls.cControls; j++)
                {
                    if (FUNC4(Mixer,
                                                 &(*Controls)[j]))
                    {
                        (*DisplayControls)++;
                    }

                    FUNC0("Line control: %ws (0x%x, 0x%x)\n", (*Controls)[j].szName, (*Controls)[j].fdwControl, (*Controls)[j].dwControlType);
                }

                return TRUE;
            }
            else
            {
                FUNC3(FUNC1(),
                         0,
                         *Controls);
                *Controls = NULL;
                FUNC0("Failed to get line (ID: 0x%x) controls: %d\n", LineInfo->dwLineID, Result);
            }
        }
        else
        {
            FUNC0("Failed to allocate memory for %d line (ID: 0x%x) controls!\n", LineInfo->dwLineID, LineInfo->cControls);
        }

        return FALSE;
    }
    else
    {
        return TRUE;
    }
}