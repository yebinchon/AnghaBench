
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {size_t NumSettings; TYPE_2__* pSettings; } ;
struct TYPE_5__ {int s; int i; } ;
struct TYPE_6__ {int Type; TYPE_1__ Value; int Key; } ;
typedef int SIZE_T ;
typedef TYPE_3__* PRDPSETTINGS ;
typedef size_t INT ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int MAXKEY ;
 int MAXVALUE ;
 size_t NUM_SETTINGS ;
 int TRUE ;
 int WriteFile (int ,int *,int,scalar_t__*,int *) ;
 int _snwprintf (int *,int,char*,int ,int ) ;
 int * lpSettings ;
 scalar_t__ wcscmp (int ,int ) ;
 int wcslen (int *) ;

__attribute__((used)) static BOOL
WriteRdpFile(HANDLE hFile,
             PRDPSETTINGS pRdpSettings)
{
    WCHAR line[MAXKEY + MAXVALUE + 4];
    SIZE_T BytesToWrite;
    ULONG BytesWritten;
    BOOL bRet;
    INT i, k;

    for (i = 0; i < pRdpSettings->NumSettings; i++)
    {

        for (k = 0; k < NUM_SETTINGS; k++)
        {
            if (wcscmp(lpSettings[k], pRdpSettings->pSettings[i].Key) == 0)
            {
                if (pRdpSettings->pSettings[i].Type == L'i')
                {
                    _snwprintf(line, MAXKEY + MAXVALUE + 4, L"%s:i:%d\r\n",
                               pRdpSettings->pSettings[i].Key,
                               pRdpSettings->pSettings[i].Value.i);
                }
                else
                {
                    _snwprintf(line, MAXKEY + MAXVALUE + 4, L"%s:s:%s\r\n",
                               pRdpSettings->pSettings[i].Key,
                               pRdpSettings->pSettings[i].Value.s);
                }

                BytesToWrite = wcslen(line) * sizeof(WCHAR);

                bRet = WriteFile(hFile,
                                 line,
                                 BytesToWrite,
                                 &BytesWritten,
                                 ((void*)0));
                if (!bRet || BytesWritten == 0)
                    return FALSE;
            }
        }
    }

    return TRUE;
}
