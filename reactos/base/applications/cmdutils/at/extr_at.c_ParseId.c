
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__* PWSTR ;
typedef int * PULONG ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ UNICODE_NULL ;
 int wcstoul (scalar_t__*,scalar_t__**,int) ;

__attribute__((used)) static
BOOL
ParseId(
    PWSTR pszId,
    PULONG pulId)
{
    PWSTR startPtr, endPtr;
    ULONG ulId = 0;
    BOOL bResult = FALSE;

    startPtr = pszId;
    endPtr = ((void*)0);
    ulId = wcstoul(startPtr, &endPtr, 10);
    if (endPtr != ((void*)0) && *endPtr == UNICODE_NULL)
    {
        bResult = TRUE;

        if (pulId != ((void*)0))
            *pulId = ulId;
    }

    return bResult;
}
