
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Guid; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ DIRECTPLAY_GUID ;


 int UINT_MAX ;
 int wcsncmp (int ,int ,int) ;

UINT
FindProviderIndex(LPCWSTR szGuid, DIRECTPLAY_GUID * PreDefProviders)
{
    UINT Index;
    for(Index = 0; Index < 4; Index++)
    {
        if (!wcsncmp(PreDefProviders[Index].Guid, szGuid, 40))
            return Index;
    }
    return UINT_MAX;
}
