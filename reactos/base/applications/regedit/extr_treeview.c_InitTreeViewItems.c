
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; int cChildren; scalar_t__ lParam; void* iSelectedImage; void* iImage; int pszText; int cchTextMax; } ;
struct TYPE_5__ {int hParent; scalar_t__ hInsertAfter; TYPE_1__ item; } ;
typedef TYPE_1__ TVITEMW ;
typedef TYPE_2__ TVINSERTSTRUCTW ;
typedef int LPWSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;
typedef int BOOL ;


 int AddEntryToTree (int ,scalar_t__,char*,int ,int) ;
 int FALSE ;
 int GetVersion () ;
 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_CONFIG ;
 int HKEY_CURRENT_USER ;
 int HKEY_DYN_DATA ;
 int HKEY_LOCAL_MACHINE ;
 int HKEY_USERS ;
 void* Image_Root ;
 int TRUE ;
 int TVE_EXPAND ;
 int TVGN_CARET ;
 int TVIF_CHILDREN ;
 int TVIF_IMAGE ;
 int TVIF_PARAM ;
 int TVIF_SELECTEDIMAGE ;
 int TVIF_TEXT ;
 scalar_t__ TVI_FIRST ;
 int TVI_ROOT ;
 int TreeView_Expand (int ,scalar_t__,int ) ;
 scalar_t__ TreeView_InsertItem (int ,TYPE_2__*) ;
 int TreeView_Select (int ,scalar_t__,int ) ;
 int wcslen (int ) ;

__attribute__((used)) static BOOL InitTreeViewItems(HWND hwndTV, LPWSTR pHostName)
{
    TVITEMW tvi;
    TVINSERTSTRUCTW tvins;
    HTREEITEM hRoot;

    tvi.mask = TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE | TVIF_CHILDREN | TVIF_PARAM;

    tvi.pszText = pHostName;
    tvi.cchTextMax = wcslen(tvi.pszText);

    tvi.iImage = Image_Root;
    tvi.iSelectedImage = Image_Root;
    tvi.cChildren = 5;

    tvi.lParam = (LPARAM)((void*)0);
    tvins.item = tvi;
    tvins.hInsertAfter = (HTREEITEM)TVI_FIRST;
    tvins.hParent = TVI_ROOT;

    if (!(hRoot = TreeView_InsertItem(hwndTV, &tvins))) return FALSE;

    if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_CLASSES_ROOT", HKEY_CLASSES_ROOT, 1)) return FALSE;
    if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_CURRENT_USER", HKEY_CURRENT_USER, 1)) return FALSE;
    if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_LOCAL_MACHINE", HKEY_LOCAL_MACHINE, 1)) return FALSE;
    if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_USERS", HKEY_USERS, 1)) return FALSE;
    if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_CURRENT_CONFIG", HKEY_CURRENT_CONFIG, 1)) return FALSE;

    if (GetVersion() & 0x80000000)
    {

        if (!AddEntryToTree(hwndTV, hRoot, L"HKEY_DYN_DATA", HKEY_DYN_DATA, 1)) return FALSE;
    }


    (void)TreeView_Expand(hwndTV, hRoot, TVE_EXPAND);
    (void)TreeView_Select(hwndTV, hRoot, TVGN_CARET);
    return TRUE;
}
