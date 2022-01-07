
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WORD ;
typedef int UINT ;
struct TYPE_2__ {int nFocusPanel; int hTreeWnd; int hListWnd; } ;
typedef int * LPCWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HTREEITEM ;
typedef int HKEY ;
typedef int BOOL ;


 int CopyKeyName (int ,int ,int *) ;
 int CreateNewKey (int ,int ) ;
 int DeleteKey (int ,int ,int *) ;
 int DeleteNode (int ,int ) ;
 int DestroyWindow (int ) ;
 int ExportRegistryFile (int ) ;
 int FALSE ;
 int FindDialog (int ) ;
 int * GetItemPath (int ,int ,int *) ;
 int ID_TREE_SUGGESTION_MAX ;
 int ID_TREE_SUGGESTION_MIN ;

 int LOWORD (int ) ;
 int MB_ICONHAND ;
 int MessageBeep (int ) ;
 int SelectNode (int ,int *) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetFocus (int ) ;
 int * Suggestions ;
 int TRUE ;
 int TVE_COLLAPSE ;
 int TVE_EXPAND ;
 int TreeView_EditLabel (int ,int ) ;
 int TreeView_Expand (int ,int ,int ) ;
 int TreeView_GetSelection (int ) ;
 int UNREFERENCED_PARAMETER (int ) ;
 int WM_COMMAND ;
 TYPE_1__* g_pChildWnd ;
 int hFrameWnd ;
 int wcslen (int *) ;

__attribute__((used)) static BOOL ChildWnd_CmdWndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    HTREEITEM hSelection;
    HKEY hRootKey;
    LPCWSTR keyPath, s;
    WORD wID = LOWORD(wParam);

    UNREFERENCED_PARAMETER(message);

    switch (wID)
    {

    case 135:
        DestroyWindow(hWnd);
        break;
    case 128:

        break;
    case 131:
        TreeView_Expand(g_pChildWnd->hTreeWnd, TreeView_GetSelection(g_pChildWnd->hTreeWnd), TVE_EXPAND);
        break;
    case 133:
        TreeView_Expand(g_pChildWnd->hTreeWnd, TreeView_GetSelection(g_pChildWnd->hTreeWnd), TVE_COLLAPSE);
        break;
    case 129:
        SetFocus(g_pChildWnd->hTreeWnd);
        TreeView_EditLabel(g_pChildWnd->hTreeWnd, TreeView_GetSelection(g_pChildWnd->hTreeWnd));
        break;
    case 132:
        hSelection = TreeView_GetSelection(g_pChildWnd->hTreeWnd);
        keyPath = GetItemPath(g_pChildWnd->hTreeWnd, hSelection, &hRootKey);

        if (keyPath == 0 || *keyPath == 0)
        {
            MessageBeep(MB_ICONHAND);
        }
        else if (DeleteKey(hWnd, hRootKey, keyPath))
            DeleteNode(g_pChildWnd->hTreeWnd, 0);
        break;
    case 130:
        ExportRegistryFile(g_pChildWnd->hTreeWnd);
        break;
    case 140:
        FindDialog(hWnd);
        break;
    case 141:
        hSelection = TreeView_GetSelection(g_pChildWnd->hTreeWnd);
        keyPath = GetItemPath(g_pChildWnd->hTreeWnd, hSelection, &hRootKey);
        CopyKeyName(hWnd, hRootKey, keyPath);
        break;
    case 137:
        CreateNewKey(g_pChildWnd->hTreeWnd, TreeView_GetSelection(g_pChildWnd->hTreeWnd));
        break;
    case 136:
    case 139:
    case 138:
        SendMessageW(hFrameWnd, WM_COMMAND, wParam, lParam);
        break;
    case 134:
        g_pChildWnd->nFocusPanel = !g_pChildWnd->nFocusPanel;
        SetFocus(g_pChildWnd->nFocusPanel? g_pChildWnd->hListWnd: g_pChildWnd->hTreeWnd);
        break;
    default:
        if ((wID >= ID_TREE_SUGGESTION_MIN) && (wID <= ID_TREE_SUGGESTION_MAX))
        {
            s = Suggestions;
            while(wID > ID_TREE_SUGGESTION_MIN)
            {
                if (*s)
                    s += wcslen(s) + 1;
                wID--;
            }
            SelectNode(g_pChildWnd->hTreeWnd, s);
            break;
        }
        return FALSE;
    }
    return TRUE;
}
