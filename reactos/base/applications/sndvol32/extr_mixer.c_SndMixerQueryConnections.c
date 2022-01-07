
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_16__ {int cbStruct; scalar_t__ szName; scalar_t__ dwSource; int dwDestination; } ;
struct TYPE_15__ {scalar_t__ hmx; } ;
struct TYPE_12__ {scalar_t__ cConnections; int dwDestination; } ;
struct TYPE_14__ {TYPE_2__* Connections; TYPE_1__ Info; } ;
struct TYPE_13__ {struct TYPE_13__* Next; scalar_t__ DisplayControls; int * Controls; TYPE_6__ Info; } ;
typedef TYPE_2__ SND_MIXER_CONNECTION ;
typedef TYPE_3__* PSND_MIXER_DESTINATION ;
typedef TYPE_2__* PSND_MIXER_CONNECTION ;
typedef TYPE_5__* PSND_MIXER ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_6__ MIXERLINE ;
typedef int LineInfo ;
typedef int * LPMIXERCONTROL ;
typedef int HMIXEROBJ ;
typedef int BOOL ;


 int DPRINT (char*,...) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MIXER_GETLINEINFOF_SOURCE ;
 scalar_t__ MMSYSERR_NOERROR ;
 int SndMixerQueryControls (TYPE_5__*,scalar_t__*,TYPE_6__*,int **) ;
 int TRUE ;
 scalar_t__ mixerGetLineInfo (int ,TYPE_6__*,int ) ;

__attribute__((used)) static BOOL
SndMixerQueryConnections(PSND_MIXER Mixer,
                         PSND_MIXER_DESTINATION Line)
{
    UINT i, DispControls;
    MIXERLINE LineInfo;
    MMRESULT Result;
    BOOL Ret = TRUE;

    LineInfo.cbStruct = sizeof(LineInfo);
    for (i = Line->Info.cConnections; i > 0; i--)
    {
        LineInfo.dwDestination = Line->Info.dwDestination;
        LineInfo.dwSource = i - 1;
        Result = mixerGetLineInfo((HMIXEROBJ)Mixer->hmx,
                                  &LineInfo,
                                  MIXER_GETLINEINFOF_SOURCE);
        if (Result == MMSYSERR_NOERROR)
        {
            LPMIXERCONTROL Controls = ((void*)0);
            PSND_MIXER_CONNECTION Con;

            DPRINT("++ Source: %ws\n", LineInfo.szName);

            DispControls = 0;

            if (!SndMixerQueryControls(Mixer,
                                       &DispControls,
                                       &LineInfo,
                                       &Controls))
            {
                DPRINT("Failed to query connection controls\n");
                Ret = FALSE;
                break;
            }

            Con = (SND_MIXER_CONNECTION*) HeapAlloc(GetProcessHeap(),
                            HEAP_ZERO_MEMORY,
                            sizeof(SND_MIXER_CONNECTION));
            if (Con != ((void*)0))
            {
                Con->Info = LineInfo;
                Con->Controls = Controls;
                Con->DisplayControls = DispControls;
                Con->Next = Line->Connections;
                Line->Connections = Con;
            }
            else
            {
                HeapFree(GetProcessHeap(),
                         0,
                         Controls);
            }
        }
        else
        {
            DPRINT("Failed to get connection information: %d\n", Result);
            Ret = FALSE;
            break;
        }
    }

    return Ret;
}
