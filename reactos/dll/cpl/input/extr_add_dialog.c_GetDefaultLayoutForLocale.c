
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int INFCONTEXT ;
typedef scalar_t__ HINF ;
typedef int DWORD ;


 int ARRAYSIZE (char*) ;
 int DWORDfromString (char*) ;
 int INF_STYLE_WIN4 ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_STR_LEN ;
 int SetupCloseInfFile (scalar_t__) ;
 scalar_t__ SetupFindFirstLineW (scalar_t__,char*,char*,int *) ;
 int SetupGetFieldCount (int *) ;
 scalar_t__ SetupGetStringFieldW (int *,int,char*,int ,int *) ;
 scalar_t__ SetupOpenInfFileW (char*,int *,int ,int *) ;
 int StringCchPrintfW (char*,int ,char*,int ) ;
 int wcslen (char*) ;
 char* wcstok (char*,char*) ;

__attribute__((used)) static DWORD
GetDefaultLayoutForLocale(DWORD dwLocaleId)
{
    DWORD dwResult = 0;
    HINF hIntlInf;

    hIntlInf = SetupOpenInfFileW(L"intl.inf", ((void*)0), INF_STYLE_WIN4, ((void*)0));
    if (hIntlInf != INVALID_HANDLE_VALUE)
    {
        WCHAR szLangID[MAX_STR_LEN];
        INFCONTEXT InfContext;

        StringCchPrintfW(szLangID, ARRAYSIZE(szLangID), L"%08X", dwLocaleId);

        if (SetupFindFirstLineW(hIntlInf, L"Locales", szLangID, &InfContext))
        {
            if (SetupGetFieldCount(&InfContext) >= 5)
            {
                WCHAR szField[MAX_STR_LEN];

                if (SetupGetStringFieldW(&InfContext, 5, szField, ARRAYSIZE(szField), ((void*)0)))
                {
                    if (wcslen(szField) == 13)
                    {
                        WCHAR *pszSeparator = L":";
                        WCHAR *pszToken;

                        pszToken = wcstok(szField, pszSeparator);
                        if (pszToken != ((void*)0))
                            pszToken = wcstok(((void*)0), pszSeparator);

                        if (pszToken != ((void*)0))
                        {
                            dwResult = DWORDfromString(pszToken);
                        }
                    }
                }
            }
        }

        SetupCloseInfFile(hIntlInf);
    }

    return dwResult;
}
