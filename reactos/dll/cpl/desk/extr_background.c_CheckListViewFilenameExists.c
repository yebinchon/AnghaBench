
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz; int flags; } ;
typedef TYPE_1__ LVFINDINFO ;
typedef int LPCTSTR ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int LVFI_STRING ;
 int ListView_FindItem (int ,int,TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static BOOL
CheckListViewFilenameExists(HWND hwndList, LPCTSTR tszFileName)
{
    LVFINDINFO lvfi;
    int retVal;

    lvfi.flags = LVFI_STRING;
    lvfi.psz = tszFileName;


    retVal = ListView_FindItem(hwndList, -1, &lvfi);
    if (retVal != -1)
        return TRUE;

    return FALSE;
}
