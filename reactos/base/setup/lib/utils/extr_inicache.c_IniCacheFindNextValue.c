
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Key; } ;
struct TYPE_4__ {int Data; int Name; struct TYPE_4__* Next; } ;
typedef int PWCHAR ;
typedef TYPE_1__* PINICACHEKEY ;
typedef TYPE_2__* PINICACHEITERATOR ;
typedef int BOOLEAN ;


 int DPRINT (char*) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
IniCacheFindNextValue(
    PINICACHEITERATOR Iterator,
    PWCHAR *KeyName,
    PWCHAR *KeyData)
{
    PINICACHEKEY Key;

    if (Iterator == ((void*)0) || KeyName == ((void*)0) || KeyData == ((void*)0))
    {
        DPRINT("Invalid parameter\n");
        return FALSE;
    }

    Key = Iterator->Key->Next;
    if (Key == ((void*)0))
    {
        DPRINT("No more entries\n");
        return FALSE;
    }

    *KeyName = Key->Name;
    *KeyData = Key->Data;

    Iterator->Key = Key;

    return TRUE;
}
