#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int cbStruct; int /*<<< orphan*/  dwComponentType; int /*<<< orphan*/  dwLineID; int /*<<< orphan*/  szName; scalar_t__ dwDestination; } ;
struct TYPE_12__ {scalar_t__ cDestinations; } ;
struct TYPE_14__ {TYPE_2__* Lines; scalar_t__ hmx; TYPE_1__ Caps; } ;
struct TYPE_13__ {struct TYPE_13__* Next; int /*<<< orphan*/  Controls; TYPE_5__ Info; int /*<<< orphan*/  DisplayControls; } ;
typedef  TYPE_2__ SND_MIXER_DESTINATION ;
typedef  TYPE_2__* PSND_MIXER_DESTINATION ;
typedef  TYPE_4__* PSND_MIXER ;
typedef  int /*<<< orphan*/  HMIXEROBJ ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MIXER_GETLINEINFOF_DESTINATION ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC7(PSND_MIXER Mixer)
{
    UINT i;
    BOOL Ret = TRUE;

    for (i = Mixer->Caps.cDestinations; i > 0; i--)
    {
        PSND_MIXER_DESTINATION Line;

        Line = (SND_MIXER_DESTINATION*) FUNC2(FUNC1(),
                         HEAP_ZERO_MEMORY,
                         sizeof(SND_MIXER_DESTINATION));
        if (Line != NULL)
        {
            Line->Info.cbStruct = sizeof(Line->Info);
            Line->Info.dwDestination = i - 1;
            if (FUNC6((HMIXEROBJ)Mixer->hmx,
                                 &Line->Info,
                                 MIXER_GETLINEINFOF_DESTINATION) == MMSYSERR_NOERROR)
            {
                FUNC0("+ Destination: %ws (0x%x, %d)\n", Line->Info.szName, Line->Info.dwLineID, Line->Info.dwComponentType);

                if (!FUNC5(Mixer,
                                           &Line->DisplayControls,
                                           &Line->Info,
                                           &Line->Controls))
                {
                    FUNC0("Failed to query mixer controls!\n");
                    Ret = FALSE;
                    break;
                }

                if (!FUNC4(Mixer, Line))
                {
                    FUNC0("Failed to query mixer connections!\n");
                    Ret = FALSE;
                    break;
                }

                Line->Next = Mixer->Lines;
                Mixer->Lines = Line;
            }
            else
            {
                FUNC0("Failed to get line information for id %d!\n", i);
                FUNC3(FUNC1(),
                         0,
                         Line);
                Ret = FALSE;
                break;
            }
        }
        else
        {
            FUNC0("Allocation of SND_MIXER_DEST structure for id %d failed!\n", i);
            Ret = FALSE;
            break;
        }
    }

    return Ret;
}