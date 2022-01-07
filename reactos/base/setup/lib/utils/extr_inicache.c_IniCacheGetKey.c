
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Data; } ;
typedef int * PWCHAR ;
typedef int * PINICACHESECTION ;
typedef TYPE_1__* PINICACHEKEY ;
typedef int NTSTATUS ;


 int DPRINT (char*) ;
 TYPE_1__* IniCacheFindKey (int *,int *,int ) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int wcslen (int *) ;

NTSTATUS
IniCacheGetKey(
    PINICACHESECTION Section,
    PWCHAR KeyName,
    PWCHAR *KeyData)
{
    PINICACHEKEY Key;

    if (Section == ((void*)0) || KeyName == ((void*)0) || KeyData == ((void*)0))
    {
        DPRINT("Invalid parameter\n");
        return STATUS_INVALID_PARAMETER;
    }

    *KeyData = ((void*)0);

    Key = IniCacheFindKey(Section, KeyName, wcslen(KeyName));
    if (Key == ((void*)0))
    {
        return STATUS_INVALID_PARAMETER;
    }

    *KeyData = Key->Data;

    return STATUS_SUCCESS;
}
