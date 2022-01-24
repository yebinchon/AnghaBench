#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  char WCHAR ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_5__ {scalar_t__ CtlType; scalar_t__ CtlID; int itemState; TYPE_3__ rcItem; int /*<<< orphan*/  hDC; int /*<<< orphan*/  itemID; int /*<<< orphan*/  hwndItem; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HICON ;
typedef  TYPE_1__ DRAWITEMSTRUCT ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFILEALLOC ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  COLOR_GRAYTEXT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 int /*<<< orphan*/  DI_NORMAL ; 
#define  DRIVE_CDROM 131 
#define  DRIVE_FIXED 130 
#define  DRIVE_REMOTE 129 
#define  DRIVE_REMOVABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETO_CLIPPED ; 
 int ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int ODS_SELECTED ; 
 scalar_t__ ODT_COMBOBOX ; 
 scalar_t__ ODT_LISTBOX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ cmb2 ; 
 scalar_t__ fldrWidth ; 
 int /*<<< orphan*/  hCDRom ; 
 int /*<<< orphan*/  hFloppy ; 
 int /*<<< orphan*/  hFolder ; 
 int /*<<< orphan*/  hHDisk ; 
 int /*<<< orphan*/  hNet ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ lst1 ; 
 scalar_t__ lst2 ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static LONG FUNC11(HWND hWnd, WPARAM wParam, LPARAM lParam,
			    int savedlg, const DRAWITEMSTRUCT *lpdis)
{
    WCHAR *str;
    HICON hIcon;
    COLORREF oldText = 0, oldBk = 0;

    if (lpdis->CtlType == ODT_LISTBOX && lpdis->CtlID == lst1)
    {
        if (!(str = FUNC8(BUFFILEALLOC))) return FALSE;
	FUNC5(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID,
                      (LPARAM)str);

	if ((lpdis->itemState & ODS_SELECTED) && !savedlg)
	{
	    oldBk = FUNC6( lpdis->hDC, FUNC4( COLOR_HIGHLIGHT ) );
	    oldText = FUNC7( lpdis->hDC, FUNC4(COLOR_HIGHLIGHTTEXT));
	}
	if (savedlg)
	    FUNC7(lpdis->hDC,FUNC4(COLOR_GRAYTEXT) );

	FUNC2(lpdis->hDC, lpdis->rcItem.left + 1,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, FUNC10(str), NULL);

	if (lpdis->itemState & ODS_SELECTED)
	    FUNC0( lpdis->hDC, &(lpdis->rcItem) );

	if ((lpdis->itemState & ODS_SELECTED) && !savedlg)
	{
	    FUNC6( lpdis->hDC, oldBk );
	    FUNC7( lpdis->hDC, oldText );
	}
        FUNC9(str);
	return TRUE;
    }

    if (lpdis->CtlType == ODT_LISTBOX && lpdis->CtlID == lst2)
    {
        if (!(str = FUNC8(BUFFILEALLOC)))
            return FALSE;
	FUNC5(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID,
                      (LPARAM)str);

	if (lpdis->itemState & ODS_SELECTED)
	{
	    oldBk = FUNC6( lpdis->hDC, FUNC4( COLOR_HIGHLIGHT ) );
	    oldText = FUNC7( lpdis->hDC, FUNC4(COLOR_HIGHLIGHTTEXT));
	}
	FUNC2(lpdis->hDC, lpdis->rcItem.left + fldrWidth,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, FUNC10(str), NULL);

	if (lpdis->itemState & ODS_SELECTED)
	    FUNC0( lpdis->hDC, &(lpdis->rcItem) );

	if (lpdis->itemState & ODS_SELECTED)
	{
	    FUNC6( lpdis->hDC, oldBk );
	    FUNC7( lpdis->hDC, oldText );
	}
	FUNC1( lpdis->hDC, lpdis->rcItem.left, lpdis->rcItem.top, hFolder, 16, 16, 0, 0, DI_NORMAL );
        FUNC9(str);
	return TRUE;
    }
    if (lpdis->CtlType == ODT_COMBOBOX && lpdis->CtlID == cmb2)
    {
        char root[] = "a:";
        if (!(str = FUNC8(BUFFILEALLOC)))
            return FALSE;
	FUNC5(lpdis->hwndItem, CB_GETLBTEXT, lpdis->itemID,
                      (LPARAM)str);
        root[0] += str[2] - 'a';
        switch(FUNC3(root))
        {
        case DRIVE_REMOVABLE: hIcon = hFloppy; break;
        case DRIVE_CDROM:     hIcon = hCDRom; break;
        case DRIVE_REMOTE:    hIcon = hNet; break;
        case DRIVE_FIXED:
        default:           hIcon = hHDisk; break;
        }
	if (lpdis->itemState & ODS_SELECTED)
	{
	    oldBk = FUNC6( lpdis->hDC, FUNC4( COLOR_HIGHLIGHT ) );
	    oldText = FUNC7( lpdis->hDC, FUNC4(COLOR_HIGHLIGHTTEXT));
	}
	FUNC2(lpdis->hDC, lpdis->rcItem.left + fldrWidth,
                  lpdis->rcItem.top + 1, ETO_OPAQUE | ETO_CLIPPED,
                  &(lpdis->rcItem), str, FUNC10(str), NULL);

	if (lpdis->itemState & ODS_SELECTED)
	{
	    FUNC6( lpdis->hDC, oldBk );
	    FUNC7( lpdis->hDC, oldText );
	}
	FUNC1( lpdis->hDC, lpdis->rcItem.left, lpdis->rcItem.top, hIcon, 16, 16, 0, 0, DI_NORMAL );
        FUNC9(str);
	return TRUE;
    }
    return FALSE;
}