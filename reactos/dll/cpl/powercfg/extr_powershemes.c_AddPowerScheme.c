
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {struct TYPE_8__* pszDescription; struct TYPE_8__* pszName; int ListEntry; int PowerPolicy; int uId; } ;
struct TYPE_7__ {int PowerSchemesList; } ;
typedef TYPE_1__* PPOWER_SCHEMES_PAGE_DATA ;
typedef TYPE_2__* PPOWER_SCHEME ;
typedef int PPOWER_POLICY ;
typedef int POWER_SCHEME ;
typedef int POWER_POLICY ;
typedef int LPWSTR ;
typedef int LPTSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CopyMemory (int *,int ,int) ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int InsertTailList (int *,int *) ;
 scalar_t__ TRUE ;
 int _tcscpy (TYPE_2__*,int ) ;

__attribute__((used)) static
PPOWER_SCHEME
AddPowerScheme(
    PPOWER_SCHEMES_PAGE_DATA pPageData,
    UINT uId,
    DWORD dwName,
    LPTSTR pszName,
    DWORD dwDescription,
    LPWSTR pszDescription,
    PPOWER_POLICY pp)
{
    PPOWER_SCHEME pScheme;
    BOOL bResult = FALSE;

    pScheme = HeapAlloc(GetProcessHeap(),
                        HEAP_ZERO_MEMORY,
                        sizeof(POWER_SCHEME));
    if (pScheme == ((void*)0))
        return ((void*)0);

    pScheme->uId = uId;
    CopyMemory(&pScheme->PowerPolicy, pp, sizeof(POWER_POLICY));

    if (dwName != 0)
    {
        pScheme->pszName = HeapAlloc(GetProcessHeap(),
                                     HEAP_ZERO_MEMORY,
                                     dwName);
        if (pScheme->pszName == ((void*)0))
            goto done;

        _tcscpy(pScheme->pszName, pszName);
    }

    if (dwDescription != 0)
    {
        pScheme->pszDescription = HeapAlloc(GetProcessHeap(),
                                            HEAP_ZERO_MEMORY,
                                            dwDescription);
        if (pScheme->pszDescription == ((void*)0))
            goto done;

        _tcscpy(pScheme->pszDescription, pszDescription);
    }

    InsertTailList(&pPageData->PowerSchemesList, &pScheme->ListEntry);
    bResult = TRUE;

done:
    if (bResult == FALSE)
    {
        if (pScheme->pszName)
            HeapFree(GetProcessHeap(), 0, pScheme->pszName);

        if (pScheme->pszDescription)
            HeapFree(GetProcessHeap(), 0, pScheme->pszDescription);

        HeapFree(GetProcessHeap(), 0, pScheme);
        pScheme = ((void*)0);
    }

    return pScheme;
}
