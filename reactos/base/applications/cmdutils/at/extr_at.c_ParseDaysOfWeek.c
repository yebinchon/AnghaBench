
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ ULONG_PTR ;
typedef int * PWSTR ;
typedef int* PUCHAR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _wcsnicmp (int *,int *,int) ;
 int ** pszDaysOfWeekArray ;
 int * wcschr (int *,int) ;
 int wcslen (int *) ;

__attribute__((used)) static
BOOL
ParseDaysOfWeek(
    PWSTR pszBuffer,
    PUCHAR pucDaysOfWeek)
{
    PWSTR startPtr, endPtr;
    INT nLength, i;

    if (wcslen(pszBuffer) == 0)
        return FALSE;

    startPtr = pszBuffer;
    endPtr = ((void*)0);
    for (;;)
    {
        endPtr = wcschr(startPtr, L',');
        if (endPtr == ((void*)0))
            nLength = wcslen(startPtr);
        else
            nLength = (INT)((ULONG_PTR)endPtr - (ULONG_PTR)startPtr) / sizeof(WCHAR);

        for (i = 0; i < 7; i++)
        {
            if (nLength == wcslen(pszDaysOfWeekArray[i]) &&
                _wcsnicmp(startPtr, pszDaysOfWeekArray[i], nLength) == 0)
            {
                *pucDaysOfWeek |= (1 << i);
                break;
            }
        }

        if (endPtr == ((void*)0))
            return TRUE;

        startPtr = endPtr + 1;
        endPtr = ((void*)0);
    }

    return FALSE;
}
