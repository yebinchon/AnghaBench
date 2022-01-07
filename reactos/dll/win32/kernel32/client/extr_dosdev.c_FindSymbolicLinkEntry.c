
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__* PWSTR ;
typedef int * PBOOLEAN ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int TRUE ;
 scalar_t__ UNICODE_NULL ;
 scalar_t__ wcscmp (scalar_t__*,scalar_t__*) ;

DWORD
FindSymbolicLinkEntry(
    PWSTR NameToFind,
    PWSTR NamesList,
    DWORD TotalEntries,
    PBOOLEAN Found)
{
    WCHAR Current;
    DWORD Entries;
    PWSTR PartialNamesList;


    if (NameToFind == ((void*)0) || NamesList == ((void*)0) || Found == ((void*)0))
    {
        return ERROR_INVALID_PARAMETER;
    }


    *Found = FALSE;


    if (TotalEntries == 0)
    {
        return ERROR_SUCCESS;
    }


    Entries = 0;
    PartialNamesList = NamesList;

    while (wcscmp(NameToFind, PartialNamesList) != 0)
    {

        ++Entries;


        if (Entries > TotalEntries)
        {




            return ERROR_SUCCESS;
        }


        do
        {
            Current = *PartialNamesList;
            ++PartialNamesList;
        } while (Current != UNICODE_NULL);
    }





    *Found = TRUE;
    return ERROR_SUCCESS;
}
