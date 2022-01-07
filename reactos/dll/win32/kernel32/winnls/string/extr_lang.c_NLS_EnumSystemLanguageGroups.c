
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szValue ;
typedef int szNumberA ;
typedef int szNumber ;
typedef int szGrpNameA ;
typedef int szGrpName ;
typedef char WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int dwFlags; int (* procW ) (int ,char*,char*,int const,int ) ;int (* procA ) (int ,char*,char*,int const,int ) ;int lParam; } ;
typedef int LGRPID ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ ENUMLANGUAGEGROUP_CALLBACKS ;
typedef int BOOL ;


 int CP_ACP ;
 int ERROR_INVALID_FLAGS ;
 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FIXME (char*) ;


 int NLS_GetLanguageGroupName (int ,char*,int) ;
 scalar_t__ NLS_RegEnumValue (scalar_t__,scalar_t__,char*,int,char*,int) ;
 scalar_t__ NLS_RegOpenKey (int ,int ) ;
 int NtClose (scalar_t__) ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,char*) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int ,int ) ;
 int debugstr_w (char*) ;
 int strtoulW (char*,int *,int) ;
 int stub1 (int ,char*,char*,int const,int ) ;
 int stub2 (int ,char*,char*,int const,int ) ;
 int szLangGroupsKeyName ;

__attribute__((used)) static BOOL NLS_EnumSystemLanguageGroups(ENUMLANGUAGEGROUP_CALLBACKS *lpProcs)
{
    WCHAR szNumber[10], szValue[4];
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
    case 0:

        lpProcs->dwFlags = 129;

    case 129:
    case 128:
        break;
    default:
        SetLastError(ERROR_INVALID_FLAGS);
        return FALSE;
    }

    hKey = NLS_RegOpenKey( 0, szLangGroupsKeyName );

    if (!hKey)
        FIXME("NLS registry key not found. Please apply the default registry file 'wine.inf'\n");

    while (bContinue)
    {
        if (NLS_RegEnumValue( hKey, ulIndex, szNumber, sizeof(szNumber),
                              szValue, sizeof(szValue) ))
        {
            BOOL bInstalled = szValue[0] == '1';
            LGRPID lgrpid = strtoulW( szNumber, ((void*)0), 16 );

            TRACE("grpid %s (%sinstalled)\n", debugstr_w(szNumber),
                   bInstalled ? "" : "not ");

            if (lpProcs->dwFlags == 128 || bInstalled)
            {
                WCHAR szGrpName[48];

                if (!NLS_GetLanguageGroupName( lgrpid, szGrpName, sizeof(szGrpName) / sizeof(WCHAR) ))
                    szGrpName[0] = '\0';

                if (lpProcs->procW)
                    bContinue = lpProcs->procW( lgrpid, szNumber, szGrpName, lpProcs->dwFlags,
                                                lpProcs->lParam );
                else
                {
                    char szNumberA[sizeof(szNumber)/sizeof(WCHAR)];
                    char szGrpNameA[48];





                    WideCharToMultiByte(CP_ACP, 0, szNumber, -1, szNumberA, sizeof(szNumberA), 0, 0);
                    WideCharToMultiByte(CP_ACP, 0, szGrpName, -1, szGrpNameA, sizeof(szGrpNameA), 0, 0);

                    bContinue = lpProcs->procA( lgrpid, szNumberA, szGrpNameA, lpProcs->dwFlags,
                                                lpProcs->lParam );
                }
            }

            ulIndex++;
        }
        else
            bContinue = FALSE;

        if (!bContinue)
            break;
    }

    if (hKey)
        NtClose( hKey );

    return TRUE;
}
