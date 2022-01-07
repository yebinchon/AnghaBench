
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szFormat ;
typedef int VOID ;
struct TYPE_3__ {int dmDisplayFrequency; } ;
typedef int TCHAR ;
typedef TYPE_1__* PDEVMODEW ;
typedef int * LPTSTR ;
typedef int DWORD ;


 int IDES_REFRESHRATEFMT ;
 int IDS_DEFREFRESHRATE ;
 int LoadString (int ,int ,int *,int) ;
 int TEXT (char) ;
 int _sntprintf (int *,int,int *,int) ;
 int hInstance ;

__attribute__((used)) static VOID
GetRefreshRateDescription(PDEVMODEW lpDevMode,
                          LPTSTR lpBuffer,
                          DWORD dwBufferLen)
{
    TCHAR szFormat[64];

    if (lpDevMode->dmDisplayFrequency <= 1)
    {
        if (!LoadString(hInstance,
                        IDS_DEFREFRESHRATE,
                        lpBuffer,
                        dwBufferLen))
        {
            lpBuffer[0] = TEXT('\0');
        }
    }
    else
    {
        if (!LoadString(hInstance,
                        IDES_REFRESHRATEFMT,
                        szFormat,
                        sizeof(szFormat) / sizeof(szFormat[0])))
        {
            szFormat[0] = TEXT('\0');
        }

        _sntprintf(lpBuffer,
                   dwBufferLen,
                   szFormat,
                   lpDevMode->dmDisplayFrequency);
    }
}
