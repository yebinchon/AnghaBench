
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef char WCHAR ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_5__ {scalar_t__ CtlType; scalar_t__ CtlID; int itemState; TYPE_3__ rcItem; int hDC; int itemID; int hwndItem; } ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef int HICON ;
typedef TYPE_1__ DRAWITEMSTRUCT ;
typedef int COLORREF ;


 int BUFFILEALLOC ;
 int CB_GETLBTEXT ;
 int COLOR_GRAYTEXT ;
 int COLOR_HIGHLIGHT ;
 int COLOR_HIGHLIGHTTEXT ;
 int DI_NORMAL ;




 int DrawFocusRect (int ,TYPE_3__*) ;
 int DrawIconEx (int ,scalar_t__,scalar_t__,int ,int,int,int ,int ,int ) ;
 int ETO_CLIPPED ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,scalar_t__,scalar_t__,int,TYPE_3__*,char*,int ,int *) ;
 int FALSE ;
 int GetDriveTypeA (char*) ;
 int GetSysColor (int ) ;
 int LB_GETTEXT ;
 int ODS_SELECTED ;
 scalar_t__ ODT_COMBOBOX ;
 scalar_t__ ODT_LISTBOX ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRUE ;
 scalar_t__ cmb2 ;
 scalar_t__ fldrWidth ;
 int hCDRom ;
 int hFloppy ;
 int hFolder ;
 int hHDisk ;
 int hNet ;
 char* heap_alloc (int ) ;
 int heap_free (char*) ;
 scalar_t__ lst1 ;
 scalar_t__ lst2 ;
 int lstrlenW (char*) ;

__attribute__((used)) static LONG FD31_WMDrawItem(HWND hWnd, WPARAM wParam, LPARAM lParam,
       int savedlg, const DRAWITEMSTRUCT *lpdis)
{
    WCHAR *str;
    HICON hIcon;
    COLORREF oldText = 0, oldBk = 0;

    if (lpdis->CtlType == ODT_LISTBOX && lpdis->CtlID == lst1)
    {
        if (!(str = heap_alloc(BUFFILEALLOC))) return FALSE;
 SendMessageW(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID,
                      (LPARAM)str);

 if ((lpdis->itemState & ODS_SELECTED) && !savedlg)
 {
     oldBk = SetBkColor( lpdis->hDC, GetSysColor( COLOR_HIGHLIGHT ) );
     oldText = SetTextColor( lpdis->hDC, GetSysColor(COLOR_HIGHLIGHTTEXT));
 }
 if (savedlg)
     SetTextColor(lpdis->hDC,GetSysColor(COLOR_GRAYTEXT) );

 ExtTextOutW(lpdis->hDC, lpdis->rcItem.left + 1,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, lstrlenW(str), ((void*)0));

 if (lpdis->itemState & ODS_SELECTED)
     DrawFocusRect( lpdis->hDC, &(lpdis->rcItem) );

 if ((lpdis->itemState & ODS_SELECTED) && !savedlg)
 {
     SetBkColor( lpdis->hDC, oldBk );
     SetTextColor( lpdis->hDC, oldText );
 }
        heap_free(str);
 return TRUE;
    }

    if (lpdis->CtlType == ODT_LISTBOX && lpdis->CtlID == lst2)
    {
        if (!(str = heap_alloc(BUFFILEALLOC)))
            return FALSE;
 SendMessageW(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID,
                      (LPARAM)str);

 if (lpdis->itemState & ODS_SELECTED)
 {
     oldBk = SetBkColor( lpdis->hDC, GetSysColor( COLOR_HIGHLIGHT ) );
     oldText = SetTextColor( lpdis->hDC, GetSysColor(COLOR_HIGHLIGHTTEXT));
 }
 ExtTextOutW(lpdis->hDC, lpdis->rcItem.left + fldrWidth,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, lstrlenW(str), ((void*)0));

 if (lpdis->itemState & ODS_SELECTED)
     DrawFocusRect( lpdis->hDC, &(lpdis->rcItem) );

 if (lpdis->itemState & ODS_SELECTED)
 {
     SetBkColor( lpdis->hDC, oldBk );
     SetTextColor( lpdis->hDC, oldText );
 }
 DrawIconEx( lpdis->hDC, lpdis->rcItem.left, lpdis->rcItem.top, hFolder, 16, 16, 0, 0, DI_NORMAL );
        heap_free(str);
 return TRUE;
    }
    if (lpdis->CtlType == ODT_COMBOBOX && lpdis->CtlID == cmb2)
    {
        char root[] = "a:";
        if (!(str = heap_alloc(BUFFILEALLOC)))
            return FALSE;
 SendMessageW(lpdis->hwndItem, CB_GETLBTEXT, lpdis->itemID,
                      (LPARAM)str);
        root[0] += str[2] - 'a';
        switch(GetDriveTypeA(root))
        {
        case 128: hIcon = hFloppy; break;
        case 131: hIcon = hCDRom; break;
        case 129: hIcon = hNet; break;
        case 130:
        default: hIcon = hHDisk; break;
        }
 if (lpdis->itemState & ODS_SELECTED)
 {
     oldBk = SetBkColor( lpdis->hDC, GetSysColor( COLOR_HIGHLIGHT ) );
     oldText = SetTextColor( lpdis->hDC, GetSysColor(COLOR_HIGHLIGHTTEXT));
 }
 ExtTextOutW(lpdis->hDC, lpdis->rcItem.left + fldrWidth,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, lstrlenW(str), ((void*)0));

 if (lpdis->itemState & ODS_SELECTED)
 {
     SetBkColor( lpdis->hDC, oldBk );
     SetTextColor( lpdis->hDC, oldText );
 }
 DrawIconEx( lpdis->hDC, lpdis->rcItem.left, lpdis->rcItem.top, hIcon, 16, 16, 0, 0, DI_NORMAL );
        heap_free(str);
 return TRUE;
    }
    return FALSE;
}
