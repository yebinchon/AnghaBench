
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t NumSettings; TYPE_2__* pSettings; } ;
struct TYPE_5__ {int s; } ;
struct TYPE_6__ {int Type; TYPE_1__ Value; int Key; } ;
typedef TYPE_3__* PRDPSETTINGS ;
typedef int LPWSTR ;
typedef size_t INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ wcscmp (int ,int ) ;
 int wcscpy (int ,int ) ;

BOOL
SetStringToSettings(PRDPSETTINGS pRdpSettings,
                    LPWSTR lpKey,
                    LPWSTR lpValue)
{
    BOOL bRet = FALSE;

    if (pRdpSettings)
    {
        INT i;

        for (i = 0; i < pRdpSettings->NumSettings; i++)
        {
            if (wcscmp(pRdpSettings->pSettings[i].Key, lpKey) == 0)
            {
                if (pRdpSettings->pSettings[i].Type == 0)
                    pRdpSettings->pSettings[i].Type = L's';

                wcscpy(pRdpSettings->pSettings[i].Value.s, lpValue);
                bRet = TRUE;
                break;
            }
        }
    }

    return bRet;
}
