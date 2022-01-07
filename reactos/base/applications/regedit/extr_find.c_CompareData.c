
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CompareStringW (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int FALSE ;
 int LOCALE_SYSTEM_DEFAULT ;
 int NORM_IGNORECASE ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_SZ ;
 int RSF_MATCHCASE ;
 int RSF_WHOLESTRING ;
 int TRUE ;
 int s_dwFlags ;
 scalar_t__ wcslen (scalar_t__) ;

__attribute__((used)) static BOOL
CompareData(
    DWORD dwType,
    LPCWSTR psz1,
    LPCWSTR psz2)
{
    INT i, cch1 = wcslen(psz1), cch2 = wcslen(psz2);
    if (dwType == REG_SZ || dwType == REG_EXPAND_SZ)
    {
        if (s_dwFlags & RSF_WHOLESTRING)
        {
            if (s_dwFlags & RSF_MATCHCASE)
                return 2 == CompareStringW(LOCALE_SYSTEM_DEFAULT, 0,
                                          psz1, cch1, psz2, cch2);
            else
                return 2 == CompareStringW(LOCALE_SYSTEM_DEFAULT,
                                          NORM_IGNORECASE, psz1, cch1, psz2, cch2);
        }

        for(i = 0; i <= cch1 - cch2; i++)
        {
            if (s_dwFlags & RSF_MATCHCASE)
            {
                if (2 == CompareStringW(LOCALE_SYSTEM_DEFAULT, 0,
                                       psz1 + i, cch2, psz2, cch2))
                    return TRUE;
            }
            else
            {
                if (2 == CompareStringW(LOCALE_SYSTEM_DEFAULT,
                                       NORM_IGNORECASE, psz1 + i, cch2, psz2, cch2))
                    return TRUE;
            }
        }
    }
    return FALSE;
}
