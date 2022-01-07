
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szValue ;
typedef int szNumberA ;
typedef int szNumber ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int dwFlags; scalar_t__ (* procA ) (char*) ;scalar_t__ (* procW ) (int *) ;} ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ ENUMSYSTEMCODEPAGES_CALLBACKS ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;


 int ERROR_INVALID_FLAGS ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ FALSE ;
 int MAX_PATH ;
 scalar_t__ NLS_RegEnumValue (scalar_t__,scalar_t__,int *,int,int *,int) ;
 scalar_t__ NLS_RegOpenKey (int ,char*) ;
 int NtClose (scalar_t__) ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int WARN (char*) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int ,int ) ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ stub2 (char*) ;
 int wcslen (int *) ;

__attribute__((used)) static BOOL NLS_EnumSystemCodePages(ENUMSYSTEMCODEPAGES_CALLBACKS *lpProcs)
{
    WCHAR szNumber[5 + 1], szValue[MAX_PATH];
    HANDLE hKey;
    BOOL bContinue = TRUE;
    ULONG ulIndex = 0;

    if (!lpProcs)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    switch (lpProcs->dwFlags)
    {
        case 129:
        case 128:
            break;
        default:
            SetLastError(ERROR_INVALID_FLAGS);
            return FALSE;
    }

    hKey = NLS_RegOpenKey(0, L"\\Registry\\Machine\\SYSTEM\\CurrentControlSet\\Control\\NLS\\CodePage");
    if (!hKey)
    {
        WARN("NLS_RegOpenKey() failed\n");
        return FALSE;
    }

    while (bContinue)
    {
        if (NLS_RegEnumValue(hKey, ulIndex, szNumber, sizeof(szNumber),
                             szValue, sizeof(szValue)))
        {
            if ((lpProcs->dwFlags == 128)||
                ((lpProcs->dwFlags == 129)&&(wcslen(szValue) > 2)))
            {
                if (lpProcs->procW)
                {
                    bContinue = lpProcs->procW(szNumber);
                }
                else
                {
                    char szNumberA[sizeof(szNumber)/sizeof(WCHAR)];

                    WideCharToMultiByte(CP_ACP, 0, szNumber, -1, szNumberA, sizeof(szNumberA), 0, 0);
                    bContinue = lpProcs->procA(szNumberA);
                }
            }

            ulIndex++;

        } else bContinue = FALSE;

        if (!bContinue)
            break;
    }

    if (hKey)
        NtClose(hKey);

    return TRUE;
}
