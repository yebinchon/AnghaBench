
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dwLineID; } ;
struct TYPE_11__ {TYPE_1__* Lines; scalar_t__ hmx; } ;
struct TYPE_10__ {TYPE_5__ Info; struct TYPE_10__* Next; } ;
struct TYPE_9__ {scalar_t__ DisplayControls; TYPE_2__* Connections; TYPE_5__ Info; struct TYPE_9__* Next; } ;
typedef int PVOID ;
typedef TYPE_1__* PSND_MIXER_DESTINATION ;
typedef TYPE_2__* PSND_MIXER_CONNECTION ;
typedef TYPE_3__* PSND_MIXER ;
typedef int (* PFNSNDMIXENUMCONNECTIONS ) (TYPE_3__*,scalar_t__,TYPE_5__*,int ) ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
SndMixerEnumConnections(PSND_MIXER Mixer,
                        DWORD LineID,
                        PFNSNDMIXENUMCONNECTIONS EnumProc,
                        PVOID Context)
{
    if (Mixer->hmx)
    {
        PSND_MIXER_DESTINATION Line;

        for (Line = Mixer->Lines; Line != ((void*)0); Line = Line->Next)
        {
            if (Line->Info.dwLineID == LineID)
            {
                PSND_MIXER_CONNECTION Connection;

                if (Line->DisplayControls != 0)
                {
                    if (!EnumProc(Mixer,
                                  LineID,
                                  &Line->Info,
                                  Context))
                    {
                        return FALSE;
                    }
                }

                for (Connection = Line->Connections; Connection != ((void*)0); Connection = Connection->Next)
                {
                    if (!EnumProc(Mixer,
                                  LineID,
                                  &Connection->Info,
                                  Context))
                    {
                        return FALSE;
                    }
                }

                return TRUE;
            }
        }
    }

    return FALSE;
}
