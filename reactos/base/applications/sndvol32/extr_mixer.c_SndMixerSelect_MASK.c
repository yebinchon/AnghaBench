#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ MixersCount; scalar_t__ MixerId; int /*<<< orphan*/ * hmx; int /*<<< orphan*/  Caps; scalar_t__ hWndNotification; } ;
typedef  TYPE_1__* PSND_MIXER ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CALLBACK_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int MIXER_OBJECTF_MIXER ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ NO_MIXER_SELECTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

BOOL
FUNC6(PSND_MIXER Mixer,
               UINT MixerId)
{
    if (MixerId >= Mixer->MixersCount)
    {
        return FALSE;
    }

    FUNC1(Mixer);

    if (FUNC5(&Mixer->hmx,
                  MixerId,
                  (DWORD_PTR)Mixer->hWndNotification,
                  0,
                  CALLBACK_WINDOW | MIXER_OBJECTF_MIXER) == MMSYSERR_NOERROR ||
        FUNC5(&Mixer->hmx,
                  MixerId,
                  (DWORD_PTR)Mixer->hWndNotification,
                  0,
                  CALLBACK_WINDOW) == MMSYSERR_NOERROR ||
        FUNC5(&Mixer->hmx,
                  MixerId,
                  0,
                  0,
                  0) == MMSYSERR_NOERROR)
    {
        if (FUNC4(MixerId,
                            &Mixer->Caps,
                            sizeof(Mixer->Caps)) == MMSYSERR_NOERROR)
        {
            BOOL Ret = FALSE;

            Mixer->MixerId = MixerId;

            FUNC0(Mixer);

            Ret = FUNC2(Mixer);

            if (!Ret)
            {
                FUNC0(Mixer);
            }

            return Ret;
        }
        else
        {
            FUNC3(Mixer->hmx);
        }
    }

    Mixer->hmx = NULL;
    Mixer->MixerId = NO_MIXER_SELECTED;
    return FALSE;
}