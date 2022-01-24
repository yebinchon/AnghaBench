#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int nFocusPanel; int /*<<< orphan*/  hTreeWnd; int /*<<< orphan*/  hListWnd; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTREEITEM ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ID_EDIT_COPYKEYNAME 141 
#define  ID_EDIT_FIND 140 
#define  ID_EDIT_NEW_BINARYVALUE 139 
#define  ID_EDIT_NEW_DWORDVALUE 138 
#define  ID_EDIT_NEW_KEY 137 
#define  ID_EDIT_NEW_STRINGVALUE 136 
#define  ID_REGISTRY_EXIT 135 
#define  ID_SWITCH_PANELS 134 
#define  ID_TREE_COLLAPSEBRANCH 133 
#define  ID_TREE_DELETE 132 
#define  ID_TREE_EXPANDBRANCH 131 
#define  ID_TREE_EXPORT 130 
#define  ID_TREE_RENAME 129 
 int ID_TREE_SUGGESTION_MAX ; 
 int ID_TREE_SUGGESTION_MIN ; 
#define  ID_VIEW_REFRESH 128 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_ICONHAND ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * Suggestions ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TVE_COLLAPSE ; 
 int /*<<< orphan*/  TVE_EXPAND ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 TYPE_1__* g_pChildWnd ; 
 int /*<<< orphan*/  hFrameWnd ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC18(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    HTREEITEM hSelection;
    HKEY hRootKey;
    LPCWSTR keyPath, s;
    WORD wID = FUNC8(wParam);

    FUNC16(message);

    switch (wID)
    {
        /* Parse the menu selections: */
    case ID_REGISTRY_EXIT:
        FUNC4(hWnd);
        break;
    case ID_VIEW_REFRESH:
        /* TODO */
        break;
    case ID_TREE_EXPANDBRANCH:
        FUNC14(g_pChildWnd->hTreeWnd, FUNC15(g_pChildWnd->hTreeWnd), TVE_EXPAND);
        break;
    case ID_TREE_COLLAPSEBRANCH:
        FUNC14(g_pChildWnd->hTreeWnd, FUNC15(g_pChildWnd->hTreeWnd), TVE_COLLAPSE);
        break;
    case ID_TREE_RENAME:
        FUNC12(g_pChildWnd->hTreeWnd);
        FUNC13(g_pChildWnd->hTreeWnd, FUNC15(g_pChildWnd->hTreeWnd));
        break;
    case ID_TREE_DELETE:
        hSelection = FUNC15(g_pChildWnd->hTreeWnd);
        keyPath = FUNC7(g_pChildWnd->hTreeWnd, hSelection, &hRootKey);

        if (keyPath == 0 || *keyPath == 0)
        {
            FUNC9(MB_ICONHAND);
        }
        else if (FUNC2(hWnd, hRootKey, keyPath))
            FUNC3(g_pChildWnd->hTreeWnd, 0);
        break;
    case ID_TREE_EXPORT:
        FUNC5(g_pChildWnd->hTreeWnd);
        break;
    case ID_EDIT_FIND:
        FUNC6(hWnd);
        break;
    case ID_EDIT_COPYKEYNAME:
        hSelection = FUNC15(g_pChildWnd->hTreeWnd);
        keyPath = FUNC7(g_pChildWnd->hTreeWnd, hSelection, &hRootKey);
        FUNC0(hWnd, hRootKey, keyPath);
        break;
    case ID_EDIT_NEW_KEY:
        FUNC1(g_pChildWnd->hTreeWnd, FUNC15(g_pChildWnd->hTreeWnd));
        break;
    case ID_EDIT_NEW_STRINGVALUE:
    case ID_EDIT_NEW_BINARYVALUE:
    case ID_EDIT_NEW_DWORDVALUE:
        FUNC11(hFrameWnd, WM_COMMAND, wParam, lParam);
        break;
    case ID_SWITCH_PANELS:
        g_pChildWnd->nFocusPanel = !g_pChildWnd->nFocusPanel;
        FUNC12(g_pChildWnd->nFocusPanel? g_pChildWnd->hListWnd: g_pChildWnd->hTreeWnd);
        break;
    default:
        if ((wID >= ID_TREE_SUGGESTION_MIN) && (wID <= ID_TREE_SUGGESTION_MAX))
        {
            s = Suggestions;
            while(wID > ID_TREE_SUGGESTION_MIN)
            {
                if (*s)
                    s += FUNC17(s) + 1;
                wID--;
            }
            FUNC10(g_pChildWnd->hTreeWnd, s);
            break;
        }
        return FALSE;
    }
    return TRUE;
}