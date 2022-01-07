
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int szDestinationName; TYPE_2__* pProfileData; } ;
struct TYPE_6__ {size_t dwProfileCount; size_t dwSelectedProfileIndex; TYPE_1__* pProfiles; } ;
struct TYPE_5__ {int szFriendlyName; } ;
typedef TYPE_3__* PPROFILENAMES ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ wcscmp (int ,int ) ;

__attribute__((used)) static
BOOL
IsProfileNameInUse(
    PPROFILENAMES pProfileNames,
    BOOL bIgnoreCurrent)
{
    DWORD i;

    for (i = 0; i < pProfileNames->pProfileData->dwProfileCount; i++)
    {
        if (bIgnoreCurrent == TRUE && i == pProfileNames->pProfileData->dwSelectedProfileIndex)
            continue;

        if (wcscmp(pProfileNames->pProfileData->pProfiles[i].szFriendlyName, pProfileNames->szDestinationName) == 0)
            return TRUE;
    }

    return FALSE;
}
