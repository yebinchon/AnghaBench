
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* Next; int StandardName; scalar_t__ Description; } ;
struct TYPE_5__ {int StandardName; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef TYPE_2__* PTIMEZONE_ENTRY ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int GetTimeZoneInformation (TYPE_1__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 TYPE_2__* TimeZoneListHead ;
 int wcscmp (int ,int ) ;

__attribute__((used)) static VOID
ShowTimeZoneList(HWND hwnd)
{
    TIME_ZONE_INFORMATION TimeZoneInfo;
    PTIMEZONE_ENTRY Entry;
    DWORD dwIndex;
    DWORD i;

    GetTimeZoneInformation(&TimeZoneInfo);

    dwIndex = 0;
    i = 0;
    Entry = TimeZoneListHead;
    while (Entry != ((void*)0))
    {
        SendMessageW(hwnd,
                     CB_ADDSTRING,
                     0,
                     (LPARAM)Entry->Description);

        if (!wcscmp(Entry->StandardName, TimeZoneInfo.StandardName))
            dwIndex = i;

        i++;
        Entry = Entry->Next;
    }

    SendMessageW(hwnd,
                 CB_SETCURSEL,
                 (WPARAM)dwIndex,
                 0);
}
