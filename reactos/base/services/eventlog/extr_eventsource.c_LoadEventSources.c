
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int* LogName; } ;
typedef int* PWSTR ;
typedef TYPE_1__* PLOGFILE ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ AddNewEventSource (TYPE_1__*,int*) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,...) ;
 int DumpEventSourceList () ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int REG_MULTI_SZ ;
 scalar_t__ RegEnumKeyExW (int ,int,int*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int*,int*,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,char*,int ,int ,int ,int) ;
 int StringCchCopyExW (int*,size_t,int*,int**,size_t*,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int*,int*) ;
 int wcslen (int*) ;

BOOL
LoadEventSources(HKEY hKey,
                 PLOGFILE pLogFile)
{
    BOOL Success;
    DWORD dwNumSubKeys, dwMaxSubKeyLength;
    DWORD dwEventSourceNameLength, MaxValueLen;
    DWORD dwIndex;
    PWSTR Buf = ((void*)0), SourceList = ((void*)0), Source = ((void*)0);
    size_t cchRemaining = 0;
    LONG Result;

    DPRINT("LoadEventSources\n");

    Result = RegQueryInfoKeyW(hKey, ((void*)0), ((void*)0), ((void*)0), &dwNumSubKeys, &dwMaxSubKeyLength,
                              ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (Result != ERROR_SUCCESS)
    {
        DPRINT1("RegQueryInfoKeyW failed: %lu\n", Result);
        return FALSE;
    }

    dwMaxSubKeyLength++;

    Buf = HeapAlloc(GetProcessHeap(), 0, dwMaxSubKeyLength * sizeof(WCHAR));
    if (!Buf)
    {
        DPRINT1("Error: cannot allocate heap!\n");
        return FALSE;
    }






    MaxValueLen = dwNumSubKeys * dwMaxSubKeyLength + wcslen(pLogFile->LogName) + 2;
    SourceList = HeapAlloc(GetProcessHeap(), 0, MaxValueLen * sizeof(WCHAR));
    if (!SourceList)
    {
        DPRINT1("Error: cannot allocate heap!\n");

    }
    else
    {
        cchRemaining = MaxValueLen;
        Source = SourceList;
    }







    dwEventSourceNameLength = dwMaxSubKeyLength;
    dwIndex = 0;
    while (RegEnumKeyExW(hKey,
                         dwIndex,
                         Buf,
                         &dwEventSourceNameLength,
                         ((void*)0), ((void*)0), ((void*)0), ((void*)0)) == ERROR_SUCCESS)
    {
        if (_wcsicmp(pLogFile->LogName, Buf) != 0)
        {
            DPRINT("Event Source: %S\n", Buf);
            Success = AddNewEventSource(pLogFile, Buf);
            if (Success && (Source != ((void*)0)))
            {

                StringCchCopyExW(Source, cchRemaining, Buf, &Source, &cchRemaining, 0);
                if (cchRemaining > 0)
                {
                    *++Source = L'\0';
                    cchRemaining--;
                }
            }
        }

        dwEventSourceNameLength = dwMaxSubKeyLength;
        dwIndex++;
    }


    DPRINT("Event Source: %S\n", pLogFile->LogName);
    Success = AddNewEventSource(pLogFile, pLogFile->LogName);
    if (Success && (Source != ((void*)0)))
    {

        StringCchCopyExW(Source, cchRemaining, pLogFile->LogName, &Source, &cchRemaining, 0);
        if (cchRemaining > 0)
        {
            *++Source = L'\0';
            cchRemaining--;
        }
    }


    Result = RegSetValueExW(hKey,
                            L"Sources",
                            0,
                            REG_MULTI_SZ,
                            (LPBYTE)SourceList,
                            (MaxValueLen - cchRemaining + 1) * sizeof(WCHAR));
    if (Result != ERROR_SUCCESS)
    {
        DPRINT1("RegSetValueExW failed: %lu\n", Result);
    }

    if (SourceList)
        HeapFree(GetProcessHeap(), 0, SourceList);

    HeapFree(GetProcessHeap(), 0, Buf);

    DumpEventSourceList();

    return TRUE;
}
