
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int szPname; } ;
struct TYPE_5__ {TYPE_1__ Caps; scalar_t__ hmx; } ;
typedef int TCHAR ;
typedef TYPE_2__* PSND_MIXER ;
typedef int * LPTSTR ;
typedef int INT ;


 int _T (char) ;
 int lstrlen (int ) ;
 int memcpy (int *,int ,int) ;

INT
SndMixerGetProductName(PSND_MIXER Mixer,
                       LPTSTR lpBuffer,
                       UINT uSize)
{
    if (Mixer->hmx)
    {
        UINT lnsz = (UINT) lstrlen(Mixer->Caps.szPname);
        if(lnsz + 1 > uSize)
        {
            return lnsz + 1;
        }
        else
        {
            memcpy(lpBuffer, Mixer->Caps.szPname, lnsz * sizeof(TCHAR));
            lpBuffer[lnsz] = _T('\0');
            return lnsz;
        }
    }

    return -1;
}
