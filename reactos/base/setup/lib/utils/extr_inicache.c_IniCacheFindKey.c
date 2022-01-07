
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_6__ {struct TYPE_6__* Next; int Name; } ;
struct TYPE_5__ {TYPE_2__* FirstKey; } ;
typedef int PWCHAR ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHEKEY ;


 scalar_t__ _wcsnicmp (int ,int ,scalar_t__) ;
 scalar_t__ wcslen (int ) ;

__attribute__((used)) static
PINICACHEKEY
IniCacheFindKey(
     PINICACHESECTION Section,
     PWCHAR Name,
     ULONG NameLength)
{
    PINICACHEKEY Key;

    Key = Section->FirstKey;
    while (Key != ((void*)0))
    {
        if (NameLength == wcslen(Key->Name))
        {
            if (_wcsnicmp(Key->Name, Name, NameLength) == 0)
                break;
        }

        Key = Key->Next;
    }

    return Key;
}
