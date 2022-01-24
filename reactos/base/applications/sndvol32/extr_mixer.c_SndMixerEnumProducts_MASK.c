#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  szPname; } ;
struct TYPE_7__ {scalar_t__ MixersCount; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSND_MIXER ;
typedef  int /*<<< orphan*/  (* PFNSNDMIXENUMPRODUCTS ) (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  TYPE_3__ MIXERCAPS ;
typedef  int /*<<< orphan*/  HMIXER ;
typedef  int /*<<< orphan*/  Caps ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC4(PSND_MIXER Mixer,
                     PFNSNDMIXENUMPRODUCTS EnumProc,
                     PVOID Context)
{
    MIXERCAPS Caps;
    HMIXER hMixer;
    UINT i;
    BOOL Ret = TRUE;

    for (i = 0; i < Mixer->MixersCount; i++)
    {
        if (FUNC3(&hMixer,
                      i,
                      0,
                      0,
                      0) == MMSYSERR_NOERROR)
        {
            if (FUNC2(i,
                                &Caps,
                                sizeof(Caps)) == MMSYSERR_NOERROR)
            {
                if (!EnumProc(Mixer,
                              i,
                              Caps.szPname,
                              Context))
                {
                    FUNC1(hMixer);
                    Ret = FALSE;
                    break;
                }
            }
            else
            {
                FUNC0("Failed to get device capabilities for mixer id %d!\n", i);
            }
            FUNC1(hMixer);
        }
    }

    return Ret;
}