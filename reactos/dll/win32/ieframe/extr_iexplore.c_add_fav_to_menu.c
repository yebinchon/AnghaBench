
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int item ;
typedef int WCHAR ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int cbSize; int fMask; int wID; scalar_t__ dwItemData; scalar_t__ dwTypeData; int fType; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef scalar_t__ LPWSTR ;
typedef int LPCWSTR ;
typedef int HMENU ;


 int FIXME (char*,int) ;
 int ID_BROWSE_GOTOFAV_FIRST ;
 int ID_BROWSE_GOTOFAV_MAX ;
 int InsertMenuItemW (int ,int,int ,TYPE_1__*) ;
 int MFT_STRING ;
 int MIIM_DATA ;
 int MIIM_FTYPE ;
 int MIIM_ID ;
 int MIIM_STRING ;
 int TRUE ;
 int get_menu_item_count (int ) ;
 scalar_t__ heap_alloc (int) ;
 int lstrcpyW (scalar_t__,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static void add_fav_to_menu(HMENU favmenu, HMENU menu, LPWSTR title, LPCWSTR url)
{
    MENUITEMINFOW item;

    int favcount = get_menu_item_count(favmenu) - 2;
    LPWSTR urlbuf;

    if(favcount > (ID_BROWSE_GOTOFAV_MAX - ID_BROWSE_GOTOFAV_FIRST))
    {
        FIXME("Add support for more than %d Favorites\n", favcount);
        return;
    }

    urlbuf = heap_alloc((lstrlenW(url) + 1) * sizeof(WCHAR));

    if(!urlbuf)
        return;

    lstrcpyW(urlbuf, url);

    item.cbSize = sizeof(item);
    item.fMask = MIIM_FTYPE | MIIM_STRING | MIIM_DATA | MIIM_ID;
    item.fType = MFT_STRING;
    item.dwTypeData = title;
    item.wID = ID_BROWSE_GOTOFAV_FIRST + favcount;
    item.dwItemData = (ULONG_PTR)urlbuf;
    InsertMenuItemW(menu, -1, TRUE, &item);
}
