
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t UINT ;
typedef int* PWSTR ;
typedef int* LPWSTR ;
typedef int* LPTSTR ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int MAX_SAMPLES_STR_SIZE ;
 int STD_DATE_SEP ;
 int isDateCompAl (int const) ;
 int wcscpy (int*,int ) ;
 size_t wcslen (int const*) ;

LPTSTR
FindDateSep(const WCHAR *szSourceStr)
{
    PWSTR pszFoundSep;
    UINT nDateCompCount=0;
    UINT nDateSepCount=0;

    pszFoundSep = (LPWSTR)HeapAlloc(GetProcessHeap(), 0, MAX_SAMPLES_STR_SIZE * sizeof(WCHAR));
    if (pszFoundSep == ((void*)0))
        return ((void*)0);

    wcscpy(pszFoundSep,STD_DATE_SEP);

    while (nDateCompCount < wcslen(szSourceStr))
    {
        if (!isDateCompAl(szSourceStr[nDateCompCount]) && (szSourceStr[nDateCompCount] != L'\''))
        {
            while (!isDateCompAl(szSourceStr[nDateCompCount]) && (szSourceStr[nDateCompCount] != L'\''))
            {
                pszFoundSep[nDateSepCount++] = szSourceStr[nDateCompCount];
                nDateCompCount++;
            }

            pszFoundSep[nDateSepCount] = L'\0';
            return pszFoundSep;
        }

        nDateCompCount++;
    }

    return pszFoundSep;
}
