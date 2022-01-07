
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fdwControl; int dwControlType; } ;
struct TYPE_5__ {scalar_t__ hmx; } ;
typedef TYPE_1__* PSND_MIXER ;
typedef TYPE_2__* LPMIXERCONTROL ;
typedef int BOOL ;


 int FALSE ;
 int MIXERCONTROL_CONTROLF_DISABLED ;

 int MIXERCONTROL_CT_CLASS_MASK ;

 int TRUE ;

BOOL
SndMixerIsDisplayControl(PSND_MIXER Mixer,
                         LPMIXERCONTROL Control)
{
    if (Mixer->hmx && !(Control->fdwControl & MIXERCONTROL_CONTROLF_DISABLED))
    {
        switch (Control->dwControlType & MIXERCONTROL_CT_CLASS_MASK)
        {
            case 129:
            case 128:
                return TRUE;
        }
    }

    return FALSE;
}
