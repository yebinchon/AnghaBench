
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWSTR ;
typedef int* PDWORD ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _wcsicmp (int ,int ) ;

__attribute__((used)) static
BOOL
ParseDay(
    PWSTR pszString,
    PWSTR *ShortDays,
    PWSTR *LongDays,
    PDWORD pdwDay)
{
    DWORD i;

    for (i = 0; i < 7; i++)
    {
        if (_wcsicmp(pszString, ShortDays[i]) == 0 ||
            _wcsicmp(pszString, LongDays[i]) == 0)
        {
            *pdwDay = i;
            return TRUE;
        }
    }

    return FALSE;
}
