
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {scalar_t__ dwLineID; int szShortName; int szName; } ;
struct TYPE_6__ {TYPE_1__* Lines; scalar_t__ hmx; } ;
struct TYPE_5__ {TYPE_3__ Info; struct TYPE_5__* Next; } ;
typedef int TCHAR ;
typedef TYPE_1__* PSND_MIXER_DESTINATION ;
typedef TYPE_2__* PSND_MIXER ;
typedef int * LPTSTR ;
typedef TYPE_3__* LPMIXERLINE ;
typedef int INT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int _T (char) ;
 scalar_t__ lstrlen (int ) ;
 int memcpy (int *,int ,int) ;

INT
SndMixerGetLineName(PSND_MIXER Mixer,
                    DWORD LineID,
                    LPTSTR lpBuffer,
                    UINT uSize,
                    BOOL LongName)
{
    if (Mixer->hmx)
    {
        UINT lnsz;
        PSND_MIXER_DESTINATION Line;
        LPMIXERLINE lpl = ((void*)0);

        for (Line = Mixer->Lines; Line != ((void*)0); Line = Line->Next)
        {
            if (Line->Info.dwLineID == LineID)
            {
                lpl = &Line->Info;
                break;
            }
        }

        if (lpl != ((void*)0))
        {
            lnsz = (UINT) lstrlen(LongName ? lpl->szName : lpl->szShortName);
            if(lnsz + 1 > uSize)
            {
                return lnsz + 1;
            }
            else
            {
                memcpy(lpBuffer, LongName ? lpl->szName : lpl->szShortName, lnsz * sizeof(TCHAR));
                lpBuffer[lnsz] = _T('\0');
                return lnsz;
            }
        }
    }

    return -1;
}
