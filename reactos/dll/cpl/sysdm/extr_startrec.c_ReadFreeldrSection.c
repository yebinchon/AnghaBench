
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szValue ;
typedef int szName ;
typedef int WCHAR ;
struct TYPE_4__ {int BootType; int szOptions; int szBootPath; int szSectionName; } ;
typedef TYPE_1__* PBOOTRECORD ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef int DWORD ;
typedef int BOOTRECORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int MAX_PATH ;
 int SetupFindFirstLineW (int ,int *,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetStringFieldW (int *,int,int *,int,int *) ;
 int _wcsnicmp (int *,char*,int) ;
 int wcscpy (int ,int *) ;

__attribute__((used)) static PBOOTRECORD
ReadFreeldrSection(HINF hInf, WCHAR *szSectionName)
{
    PBOOTRECORD pRecord;
    INFCONTEXT InfContext;
    WCHAR szName[MAX_PATH];
    WCHAR szValue[MAX_PATH];
    DWORD LineLength;

    if (!SetupFindFirstLineW(hInf,
                            szSectionName,
                            ((void*)0),
                            &InfContext))
    {

        return ((void*)0);
    }

    pRecord = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(BOOTRECORD));
    if (pRecord == ((void*)0))
    {
        return ((void*)0);
    }

    wcscpy(pRecord->szSectionName, szSectionName);

    do
    {
        if (!SetupGetStringFieldW(&InfContext,
                                  0,
                                  szName,
                                  sizeof(szName) / sizeof(WCHAR),
                                  &LineLength))
        {
            break;
        }

        if (!SetupGetStringFieldW(&InfContext,
                                  1,
                                  szValue,
                                  sizeof(szValue) / sizeof(WCHAR),
                                  &LineLength))
        {
            break;
        }

        if (!_wcsnicmp(szName, L"BootType", 8))
        {
            if (!_wcsnicmp(szValue, L"ReactOS", 7))
            {

                pRecord->BootType = 1;
            }
            else
            {
                pRecord->BootType = 0;
            }
        }
        else if (!_wcsnicmp(szName, L"SystemPath", 10))
        {
            wcscpy(pRecord->szBootPath, szValue);
        }
        else if (!_wcsnicmp(szName, L"Options", 7))
        {

            wcscpy(pRecord->szOptions, szValue);
        }

    }
    while (SetupFindNextLine(&InfContext, &InfContext));

    return pRecord;
}
