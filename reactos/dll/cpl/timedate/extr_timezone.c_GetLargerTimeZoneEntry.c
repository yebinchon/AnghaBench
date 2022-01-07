
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Bias; } ;
struct TYPE_6__ {struct TYPE_6__* Next; int Description; TYPE_1__ TimezoneInfo; } ;
typedef TYPE_2__* PTIMEZONE_ENTRY ;
typedef int LPWSTR ;
typedef scalar_t__ LONG ;


 TYPE_2__* TimeZoneListHead ;
 scalar_t__ _wcsicmp (int ,int ) ;

__attribute__((used)) static
PTIMEZONE_ENTRY
GetLargerTimeZoneEntry(
    LONG Bias,
    LPWSTR lpDescription)
{
    PTIMEZONE_ENTRY Entry;

    Entry = TimeZoneListHead;
    while (Entry != ((void*)0))
    {
        if (Entry->TimezoneInfo.Bias < Bias)
            return Entry;

        if (Entry->TimezoneInfo.Bias == Bias)
        {
            if (_wcsicmp(Entry->Description, lpDescription) > 0)
                return Entry;
        }

        Entry = Entry->Next;
    }

    return ((void*)0);
}
