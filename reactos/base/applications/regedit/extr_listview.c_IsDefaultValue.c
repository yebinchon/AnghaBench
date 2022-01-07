
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iItem; scalar_t__ lParam; int mask; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__* PLINE_INFO ;
typedef TYPE_2__ LVITEMW ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int LVIF_PARAM ;
 scalar_t__ ListView_GetItem (int ,TYPE_2__*) ;
 int wcscmp (int ,char*) ;

BOOL IsDefaultValue(HWND hwndLV, int i)
{
    PLINE_INFO lineinfo;
    LVITEMW Item;

    Item.mask = LVIF_PARAM;
    Item.iItem = i;
    if(ListView_GetItem(hwndLV, &Item))
    {
        lineinfo = (PLINE_INFO)Item.lParam;
        return lineinfo && (!lineinfo->name || !wcscmp(lineinfo->name, L""));
    }
    return FALSE;
}
