
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_5__ {scalar_t__ i; } ;
struct TYPE_7__ {TYPE_1__ Value; scalar_t__ Type; int Key; } ;
struct TYPE_6__ {int NumSettings; TYPE_4__* pSettings; } ;
typedef int SETTINGS ;
typedef TYPE_2__* PRDPSETTINGS ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int NUM_SETTINGS ;
 int TRUE ;
 int * lpSettings ;
 int wcscpy (int ,int ) ;

BOOL
InitRdpSettings(PRDPSETTINGS pRdpSettings)
{
    BOOL bRet = FALSE;

    pRdpSettings->pSettings = HeapAlloc(GetProcessHeap(),
                                        0,
                                        sizeof(SETTINGS) * NUM_SETTINGS);
    if (pRdpSettings->pSettings)
    {
        INT i;

        for (i = 0; i < NUM_SETTINGS; i++)
        {
            wcscpy(pRdpSettings->pSettings[i].Key, lpSettings[i]);
            pRdpSettings->pSettings[i].Type = (WCHAR)0;
            pRdpSettings->pSettings[i].Value.i = 0;
        }

        pRdpSettings->NumSettings = NUM_SETTINGS;

        bRet = TRUE;
    }

    return bRet;
}
