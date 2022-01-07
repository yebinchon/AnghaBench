
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ MixersCount; scalar_t__ MixerId; int * hmx; int Caps; scalar_t__ hWndNotification; } ;
typedef TYPE_1__* PSND_MIXER ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int CALLBACK_WINDOW ;
 int ClearMixerCache (TYPE_1__*) ;
 int FALSE ;
 int MIXER_OBJECTF_MIXER ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ NO_MIXER_SELECTED ;
 int SndMixerClose (TYPE_1__*) ;
 int SndMixerQueryDestinations (TYPE_1__*) ;
 int mixerClose (int *) ;
 scalar_t__ mixerGetDevCaps (scalar_t__,int *,int) ;
 scalar_t__ mixerOpen (int **,scalar_t__,int ,int ,int) ;

BOOL
SndMixerSelect(PSND_MIXER Mixer,
               UINT MixerId)
{
    if (MixerId >= Mixer->MixersCount)
    {
        return FALSE;
    }

    SndMixerClose(Mixer);

    if (mixerOpen(&Mixer->hmx,
                  MixerId,
                  (DWORD_PTR)Mixer->hWndNotification,
                  0,
                  CALLBACK_WINDOW | MIXER_OBJECTF_MIXER) == MMSYSERR_NOERROR ||
        mixerOpen(&Mixer->hmx,
                  MixerId,
                  (DWORD_PTR)Mixer->hWndNotification,
                  0,
                  CALLBACK_WINDOW) == MMSYSERR_NOERROR ||
        mixerOpen(&Mixer->hmx,
                  MixerId,
                  0,
                  0,
                  0) == MMSYSERR_NOERROR)
    {
        if (mixerGetDevCaps(MixerId,
                            &Mixer->Caps,
                            sizeof(Mixer->Caps)) == MMSYSERR_NOERROR)
        {
            BOOL Ret = FALSE;

            Mixer->MixerId = MixerId;

            ClearMixerCache(Mixer);

            Ret = SndMixerQueryDestinations(Mixer);

            if (!Ret)
            {
                ClearMixerCache(Mixer);
            }

            return Ret;
        }
        else
        {
            mixerClose(Mixer->hmx);
        }
    }

    Mixer->hmx = ((void*)0);
    Mixer->MixerId = NO_MIXER_SELECTED;
    return FALSE;
}
