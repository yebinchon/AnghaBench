
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {scalar_t__ MixersCount; int MixerId; int hWndNotification; } ;
typedef int SND_MIXER ;
typedef TYPE_1__* PSND_MIXER ;
typedef int HWND ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,int) ;
 int NO_MIXER_SELECTED ;
 int SndMixerSelect (TYPE_1__*,int ) ;
 scalar_t__ mixerGetNumDevs () ;

PSND_MIXER
SndMixerCreate(HWND hWndNotification, UINT MixerId)
{
    PSND_MIXER Mixer = (PSND_MIXER) HeapAlloc(GetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 sizeof(SND_MIXER));
    if (Mixer != ((void*)0))
    {
        Mixer->hWndNotification = hWndNotification;
        Mixer->MixersCount = mixerGetNumDevs();
        Mixer->MixerId = NO_MIXER_SELECTED;

        if (Mixer->MixersCount > 0)
        {

            SndMixerSelect(Mixer, MixerId);
        }
    }

    return Mixer;
}
