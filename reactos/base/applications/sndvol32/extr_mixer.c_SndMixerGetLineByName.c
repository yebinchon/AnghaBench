
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dwLineID; int szName; } ;
struct TYPE_9__ {scalar_t__ hmx; TYPE_1__* Lines; } ;
struct TYPE_8__ {TYPE_4__ Info; struct TYPE_8__* Next; } ;
struct TYPE_7__ {scalar_t__ DisplayControls; TYPE_2__* Connections; TYPE_4__ Info; struct TYPE_7__* Next; } ;
typedef TYPE_1__* PSND_MIXER_DESTINATION ;
typedef TYPE_2__* PSND_MIXER_CONNECTION ;
typedef TYPE_3__* PSND_MIXER ;
typedef int LPWSTR ;
typedef TYPE_4__* LPMIXERLINE ;
typedef scalar_t__ DWORD ;


 scalar_t__ wcsicmp (int ,int ) ;

LPMIXERLINE
SndMixerGetLineByName(PSND_MIXER Mixer,
                      DWORD LineID,
                      LPWSTR LineName)
{
    PSND_MIXER_DESTINATION Line;
    PSND_MIXER_CONNECTION Connection;

    if (Mixer->hmx == 0)
        return ((void*)0);

    for (Line = Mixer->Lines; Line != ((void*)0); Line = Line->Next)
    {
        if (Line->Info.dwLineID == LineID)
        {
            if (Line->DisplayControls != 0)
            {
                if (wcsicmp(Line->Info.szName, LineName) == 0)
                {
                    return &Line->Info;
                }
            }

            for (Connection = Line->Connections; Connection != ((void*)0); Connection = Connection->Next)
            {
                if (wcsicmp(Connection->Info.szName, LineName) == 0)
                {
                    return &Connection->Info;
                }
            }

            return ((void*)0);
        }
    }

    return ((void*)0);
}
