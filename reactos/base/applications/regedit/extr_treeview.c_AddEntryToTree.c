
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; scalar_t__ lParam; scalar_t__ cChildren; int iSelectedImage; int iImage; int pszText; int cchTextMax; } ;
struct TYPE_5__ {void* hParent; void* hInsertAfter; TYPE_1__ item; } ;
typedef TYPE_1__ TVITEMW ;
typedef TYPE_2__ TVINSERTSTRUCTW ;
typedef int LPWSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef void* HTREEITEM ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int Image_Closed ;
 int Image_Open ;
 scalar_t__ RegQueryInfoKeyW (scalar_t__,int ,int ,int ,scalar_t__*,int ,int ,int ,int ,int ,int ,int ) ;
 int TVIF_CHILDREN ;
 int TVIF_IMAGE ;
 int TVIF_PARAM ;
 int TVIF_SELECTEDIMAGE ;
 int TVIF_TEXT ;
 scalar_t__ TVI_FIRST ;
 scalar_t__ TVI_LAST ;
 void* TreeView_InsertItem (int ,TYPE_2__*) ;
 int wcslen (int ) ;

__attribute__((used)) static HTREEITEM AddEntryToTree(HWND hwndTV, HTREEITEM hParent, LPWSTR label, HKEY hKey, DWORD dwChildren)
{
    TVITEMW tvi;
    TVINSERTSTRUCTW tvins;

    if (hKey)
    {
        if (RegQueryInfoKeyW(hKey, 0, 0, 0, &dwChildren, 0, 0, 0, 0, 0, 0, 0) != ERROR_SUCCESS)
        {
            dwChildren = 0;
        }
    }

    tvi.mask = TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE | TVIF_CHILDREN | TVIF_PARAM;
    tvi.pszText = label;
    tvi.cchTextMax = wcslen(tvi.pszText);
    tvi.iImage = Image_Closed;
    tvi.iSelectedImage = Image_Open;
    tvi.cChildren = dwChildren;
    tvi.lParam = (LPARAM)hKey;
    tvins.item = tvi;
    tvins.hInsertAfter = (HTREEITEM)(hKey ? TVI_LAST : TVI_FIRST);
    tvins.hParent = hParent;
    return TreeView_InsertItem(hwndTV, &tvins);
}
