
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PSND_MIXER ;


 int ClearMixerCache (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int SndMixerClose (int ) ;

VOID
SndMixerDestroy(PSND_MIXER Mixer)
{
    ClearMixerCache(Mixer);
    SndMixerClose(Mixer);
    HeapFree(GetProcessHeap(),
             0,
             Mixer);
}
