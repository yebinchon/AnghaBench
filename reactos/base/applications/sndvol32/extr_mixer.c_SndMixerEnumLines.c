
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Lines; scalar_t__ hmx; } ;
struct TYPE_6__ {int DisplayControls; int Info; struct TYPE_6__* Next; } ;
typedef int PVOID ;
typedef TYPE_1__* PSND_MIXER_DESTINATION ;
typedef TYPE_2__* PSND_MIXER ;
typedef int (* PFNSNDMIXENUMLINES ) (TYPE_2__*,int *,int ,int ) ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
SndMixerEnumLines(PSND_MIXER Mixer,
                  PFNSNDMIXENUMLINES EnumProc,
                  PVOID Context)
{
    if (Mixer->hmx)
    {
        PSND_MIXER_DESTINATION Line;

        for (Line = Mixer->Lines; Line != ((void*)0); Line = Line->Next)
        {
            if (!EnumProc(Mixer,
                          &Line->Info,
                          Line->DisplayControls,
                          Context))
            {
                return FALSE;
            }
        }

        return TRUE;
    }

    return FALSE;
}
