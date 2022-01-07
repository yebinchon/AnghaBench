
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int szPname; } ;
struct TYPE_7__ {scalar_t__ MixersCount; } ;
typedef int PVOID ;
typedef TYPE_1__* PSND_MIXER ;
typedef int (* PFNSNDMIXENUMPRODUCTS ) (TYPE_1__*,scalar_t__,int ,int ) ;
typedef TYPE_3__ MIXERCAPS ;
typedef int HMIXER ;
typedef int Caps ;
typedef int BOOL ;


 int DPRINT (char*,scalar_t__) ;
 int FALSE ;
 scalar_t__ MMSYSERR_NOERROR ;
 int TRUE ;
 int mixerClose (int ) ;
 scalar_t__ mixerGetDevCaps (scalar_t__,TYPE_3__*,int) ;
 scalar_t__ mixerOpen (int *,scalar_t__,int ,int ,int ) ;

BOOL
SndMixerEnumProducts(PSND_MIXER Mixer,
                     PFNSNDMIXENUMPRODUCTS EnumProc,
                     PVOID Context)
{
    MIXERCAPS Caps;
    HMIXER hMixer;
    UINT i;
    BOOL Ret = TRUE;

    for (i = 0; i < Mixer->MixersCount; i++)
    {
        if (mixerOpen(&hMixer,
                      i,
                      0,
                      0,
                      0) == MMSYSERR_NOERROR)
        {
            if (mixerGetDevCaps(i,
                                &Caps,
                                sizeof(Caps)) == MMSYSERR_NOERROR)
            {
                if (!EnumProc(Mixer,
                              i,
                              Caps.szPname,
                              Context))
                {
                    mixerClose(hMixer);
                    Ret = FALSE;
                    break;
                }
            }
            else
            {
                DPRINT("Failed to get device capabilities for mixer id %d!\n", i);
            }
            mixerClose(hMixer);
        }
    }

    return Ret;
}
