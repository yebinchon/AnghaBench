#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mi ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_7__ {int codepage; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int cbSize; scalar_t__ dwItemData; int /*<<< orphan*/  fMask; } ;
struct TYPE_5__ {int cbSize; int dwMask; int wAlignment; scalar_t__ wNumbering; } ;
typedef  TYPE_1__ PARAFORMAT ;
typedef  TYPE_2__ MENUITEMINFOW ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_3__ GETTEXTLENGTHEX ;

/* Variables and functions */
 int /*<<< orphan*/  BANDID_FORMATBAR ; 
 int /*<<< orphan*/  BANDID_RULER ; 
 int /*<<< orphan*/  BANDID_TOOLBAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_CANREDO ; 
 int /*<<< orphan*/  EM_CANUNDO ; 
 int /*<<< orphan*/  EM_GETMODIFY ; 
 int /*<<< orphan*/  EM_GETPARAFORMAT ; 
 int /*<<< orphan*/  EM_GETSEL ; 
 int /*<<< orphan*/  EM_GETTEXTLENGTHEX ; 
 int ES_READONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GTL_NUMCHARS ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_EDITOR ; 
 int /*<<< orphan*/  IDC_STATUSBAR ; 
 int /*<<< orphan*/  ID_ALIGN_CENTER ; 
 int /*<<< orphan*/  ID_ALIGN_LEFT ; 
 int /*<<< orphan*/  ID_ALIGN_RIGHT ; 
 int /*<<< orphan*/  ID_BULLET ; 
 int /*<<< orphan*/  ID_EDIT_COPY ; 
 int /*<<< orphan*/  ID_EDIT_CUT ; 
 int /*<<< orphan*/  ID_EDIT_MODIFIED ; 
 int /*<<< orphan*/  ID_EDIT_READONLY ; 
 int /*<<< orphan*/  ID_EDIT_REDO ; 
 int /*<<< orphan*/  ID_EDIT_UNDO ; 
 int /*<<< orphan*/  ID_FIND ; 
 int /*<<< orphan*/  ID_FIND_NEXT ; 
 int /*<<< orphan*/  ID_REPLACE ; 
 int /*<<< orphan*/  ID_TOGGLE_FORMATBAR ; 
 int /*<<< orphan*/  ID_TOGGLE_RULER ; 
 int /*<<< orphan*/  ID_TOGGLE_STATUSBAR ; 
 int /*<<< orphan*/  ID_TOGGLE_TOOLBAR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MF_CHECKED ; 
 int /*<<< orphan*/  MF_ENABLED ; 
 int /*<<< orphan*/  MF_GRAYED ; 
 int /*<<< orphan*/  MF_UNCHECKED ; 
 int /*<<< orphan*/  MIIM_DATA ; 
 int PFA_CENTER ; 
 int PFA_LEFT ; 
 int PFA_RIGHT ; 
 int PFM_ALIGNMENT ; 
 scalar_t__ PFN_BULLET ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hEditorWnd ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC8( HWND hWnd, WPARAM wParam )
{
    HMENU hMenu = (HMENU)wParam;
    HWND hwndEditor = FUNC2(hWnd, IDC_EDITOR);
    HWND hwndStatus = FUNC2(hWnd, IDC_STATUSBAR);
    PARAFORMAT pf;
    int nAlignment = -1;
    int selFrom, selTo;
    GETTEXTLENGTHEX gt;
    LRESULT textLength;
    MENUITEMINFOW mi;

    FUNC6(hEditorWnd, EM_GETSEL, (WPARAM)&selFrom, (LPARAM)&selTo);
    FUNC1(hMenu, ID_EDIT_COPY, (selFrom == selTo) ? MF_GRAYED : MF_ENABLED);
    FUNC1(hMenu, ID_EDIT_CUT, (selFrom == selTo) ? MF_GRAYED : MF_ENABLED);

    pf.cbSize = sizeof(PARAFORMAT);
    FUNC6(hwndEditor, EM_GETPARAFORMAT, 0, (LPARAM)&pf);
    FUNC0(hMenu, ID_EDIT_READONLY,
      (FUNC4(hwndEditor, GWL_STYLE) & ES_READONLY) ? MF_CHECKED : MF_UNCHECKED);
    FUNC0(hMenu, ID_EDIT_MODIFIED,
      FUNC6(hwndEditor, EM_GETMODIFY, 0, 0) ? MF_CHECKED : MF_UNCHECKED);
    if (pf.dwMask & PFM_ALIGNMENT)
        nAlignment = pf.wAlignment;
    FUNC0(hMenu, ID_ALIGN_LEFT, (nAlignment == PFA_LEFT) ?  MF_CHECKED : MF_UNCHECKED);
    FUNC0(hMenu, ID_ALIGN_CENTER, (nAlignment == PFA_CENTER) ?  MF_CHECKED : MF_UNCHECKED);
    FUNC0(hMenu, ID_ALIGN_RIGHT, (nAlignment == PFA_RIGHT) ?  MF_CHECKED : MF_UNCHECKED);
    FUNC0(hMenu, ID_BULLET, ((pf.wNumbering == PFN_BULLET) ?  MF_CHECKED : MF_UNCHECKED));
    FUNC1(hMenu, ID_EDIT_UNDO, FUNC6(hwndEditor, EM_CANUNDO, 0, 0) ?
            MF_ENABLED : MF_GRAYED);
    FUNC1(hMenu, ID_EDIT_REDO, FUNC6(hwndEditor, EM_CANREDO, 0, 0) ?
            MF_ENABLED : MF_GRAYED);

    FUNC0(hMenu, ID_TOGGLE_TOOLBAR, FUNC7(BANDID_TOOLBAR) ?
            MF_CHECKED : MF_UNCHECKED);

    FUNC0(hMenu, ID_TOGGLE_FORMATBAR, FUNC7(BANDID_FORMATBAR) ?
            MF_CHECKED : MF_UNCHECKED);

    FUNC0(hMenu, ID_TOGGLE_STATUSBAR, FUNC5(hwndStatus) ?
            MF_CHECKED : MF_UNCHECKED);

    FUNC0(hMenu, ID_TOGGLE_RULER, FUNC7(BANDID_RULER) ? MF_CHECKED : MF_UNCHECKED);

    gt.flags = GTL_NUMCHARS;
    gt.codepage = 1200;
    textLength = FUNC6(hEditorWnd, EM_GETTEXTLENGTHEX, (WPARAM)&gt, 0);
    FUNC1(hMenu, ID_FIND, textLength ? MF_ENABLED : MF_GRAYED);

    mi.cbSize = sizeof(mi);
    mi.fMask = MIIM_DATA;

    FUNC3(hMenu, ID_FIND_NEXT, FALSE, &mi);

    FUNC1(hMenu, ID_FIND_NEXT, (textLength && mi.dwItemData) ?  MF_ENABLED : MF_GRAYED);

    FUNC1(hMenu, ID_REPLACE, textLength ? MF_ENABLED : MF_GRAYED);

    return 0;
}