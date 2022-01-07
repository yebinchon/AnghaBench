
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int item ;
typedef int UINT ;
struct TYPE_3__ {int cbSize; int dwItemData; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef int * LPWSTR ;
typedef int HMENU ;


 int FALSE ;
 int GetMenuItemInfoW (int ,int ,int ,TYPE_1__*) ;
 int MIIM_DATA ;

__attribute__((used)) static LPWSTR get_fav_url_from_id(HMENU menu, UINT id)
{
    MENUITEMINFOW item;

    item.cbSize = sizeof(item);
    item.fMask = MIIM_DATA;

    if(!GetMenuItemInfoW(menu, id, FALSE, &item))
        return ((void*)0);

    return (LPWSTR)item.dwItemData;
}
