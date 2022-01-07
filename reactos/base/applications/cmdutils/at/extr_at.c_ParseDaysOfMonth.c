
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__* PWSTR ;
typedef int* PULONG ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ UNICODE_NULL ;
 scalar_t__ wcslen (scalar_t__*) ;
 int wcstoul (scalar_t__*,scalar_t__**,int) ;

__attribute__((used)) static
BOOL
ParseDaysOfMonth(
    PWSTR pszBuffer,
    PULONG pulDaysOfMonth)
{
    PWSTR startPtr, endPtr;
    ULONG ulValue;

    if (wcslen(pszBuffer) == 0)
        return FALSE;

    startPtr = pszBuffer;
    endPtr = ((void*)0);
    for (;;)
    {
        ulValue = wcstoul(startPtr, &endPtr, 10);
        if (ulValue == 0)
            return FALSE;

        if (ulValue > 0 && ulValue <= 31)
            *pulDaysOfMonth |= (1 << (ulValue - 1));

        if (endPtr != ((void*)0) && *endPtr == UNICODE_NULL)
            return TRUE;

        startPtr = endPtr + 1;
        endPtr = ((void*)0);
    }

    return FALSE;
}
