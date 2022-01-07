
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int MixerId; int * hmx; } ;
typedef TYPE_1__* PSND_MIXER ;


 int NO_MIXER_SELECTED ;
 int mixerClose (int *) ;

VOID
SndMixerClose(PSND_MIXER Mixer)
{
    if (Mixer->hmx != ((void*)0))
    {
      mixerClose(Mixer->hmx);
      Mixer->hmx = ((void*)0);
      Mixer->MixerId = NO_MIXER_SELECTED;
    }
}
