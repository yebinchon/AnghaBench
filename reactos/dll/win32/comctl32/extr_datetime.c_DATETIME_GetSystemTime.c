
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; int date; int hwndCheckbut; } ;
typedef int SYSTEMTIME ;
typedef int DWORD ;
typedef TYPE_1__ DATETIME_INFO ;


 int BM_GETCHECK ;
 scalar_t__ BST_UNCHECKED ;
 int DTS_SHOWNONE ;
 int GDT_NONE ;
 int GDT_VALID ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static DWORD
DATETIME_GetSystemTime (const DATETIME_INFO *infoPtr, SYSTEMTIME *systime)
{
    if (!systime) return GDT_NONE;

    if ((infoPtr->dwStyle & DTS_SHOWNONE) &&
        (SendMessageW (infoPtr->hwndCheckbut, BM_GETCHECK, 0, 0) == BST_UNCHECKED))
        return GDT_NONE;

    *systime = infoPtr->date;

    return GDT_VALID;
}
