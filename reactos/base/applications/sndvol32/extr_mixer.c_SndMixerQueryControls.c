
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_16__ {int cControls; int dwLineID; } ;
struct TYPE_15__ {int dwControlType; int fdwControl; int szName; } ;
struct TYPE_14__ {int cbStruct; size_t cControls; int cbmxctrl; TYPE_3__* pamxctrl; int dwLineID; } ;
struct TYPE_13__ {scalar_t__ hmx; } ;
typedef int * PUINT ;
typedef TYPE_1__* PSND_MIXER ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_2__ MIXERLINECONTROLS ;
typedef TYPE_3__ MIXERCONTROL ;
typedef int LineControls ;
typedef TYPE_4__* LPMIXERLINE ;
typedef TYPE_3__* LPMIXERCONTROL ;
typedef int HMIXEROBJ ;
typedef int BOOL ;


 int DPRINT (char*,int ,scalar_t__,...) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int MIXER_GETLINECONTROLSF_ALL ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ SndMixerIsDisplayControl (TYPE_1__*,TYPE_3__*) ;
 int TRUE ;
 scalar_t__ mixerGetLineControls (int ,TYPE_2__*,int ) ;

BOOL
SndMixerQueryControls(PSND_MIXER Mixer,
                      PUINT DisplayControls,
                      LPMIXERLINE LineInfo,
                      LPMIXERCONTROL *Controls)
{
    if (LineInfo->cControls > 0)
    {
        *Controls = (MIXERCONTROL*) HeapAlloc(GetProcessHeap(),
                              HEAP_ZERO_MEMORY,
                              LineInfo->cControls * sizeof(MIXERCONTROL));
        if (*Controls != ((void*)0))
        {
            MIXERLINECONTROLS LineControls;
            MMRESULT Result;
            UINT j;

            LineControls.cbStruct = sizeof(LineControls);
            LineControls.dwLineID = LineInfo->dwLineID;
            LineControls.cControls = LineInfo->cControls;
            LineControls.cbmxctrl = sizeof(MIXERCONTROL);
            LineControls.pamxctrl = (MIXERCONTROL*)(*Controls);

            Result = mixerGetLineControls((HMIXEROBJ)Mixer->hmx,
                                          &LineControls,
                                          MIXER_GETLINECONTROLSF_ALL);
            if (Result == MMSYSERR_NOERROR)
            {
                for (j = 0; j < LineControls.cControls; j++)
                {
                    if (SndMixerIsDisplayControl(Mixer,
                                                 &(*Controls)[j]))
                    {
                        (*DisplayControls)++;
                    }

                    DPRINT("Line control: %ws (0x%x, 0x%x)\n", (*Controls)[j].szName, (*Controls)[j].fdwControl, (*Controls)[j].dwControlType);
                }

                return TRUE;
            }
            else
            {
                HeapFree(GetProcessHeap(),
                         0,
                         *Controls);
                *Controls = ((void*)0);
                DPRINT("Failed to get line (ID: 0x%x) controls: %d\n", LineInfo->dwLineID, Result);
            }
        }
        else
        {
            DPRINT("Failed to allocate memory for %d line (ID: 0x%x) controls!\n", LineInfo->dwLineID, LineInfo->cControls);
        }

        return FALSE;
    }
    else
    {
        return TRUE;
    }
}
