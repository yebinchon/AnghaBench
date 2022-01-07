
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lvItem ;
typedef int WCHAR ;
struct TYPE_13__ {int mask; int iItem; int iImage; scalar_t__ lParam; TYPE_1__* pszText; } ;
struct TYPE_12__ {int hListView; int hListLarge; TYPE_1__* hPrograms; TYPE_1__* hActiveProgram; } ;
struct TYPE_11__ {int nIconIndex; int nCmdShow; int nHotKey; int iItem; int * Tags; scalar_t__ TagsSize; int bNewVDM; int hIcon; struct TYPE_11__* hWorkDir; struct TYPE_11__* hIconFile; struct TYPE_11__* hCmdLine; struct TYPE_11__* hName; struct TYPE_11__* hNext; struct TYPE_11__* hPrior; TYPE_2__* hGroup; } ;
typedef TYPE_1__ PROGRAM ;
typedef TYPE_2__ PROGGROUP ;
typedef TYPE_3__ LVITEMW ;
typedef TYPE_1__* LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LPARAM ;
typedef int INT ;
typedef int HICON ;
typedef int BOOL ;


 TYPE_1__* Alloc (int ,int) ;
 int DestroyIcon (int ) ;
 int Free (TYPE_1__*) ;
 int HEAP_ZERO_MEMORY ;
 int IDS_ERROR ;
 int IDS_OUT_OF_MEMORY ;
 int ImageList_ReplaceIcon (int ,int,int ) ;
 int LVIF_IMAGE ;
 int LVIF_PARAM ;
 int LVIF_TEXT ;
 int LVM_GETITEMCOUNT ;
 int LVM_INSERTITEMW ;
 int LVM_SETITEMPOSITION ;
 int MAIN_MessageBoxIDS (int ,int ,int ) ;
 int MAKELPARAM (int,int) ;
 int MB_OK ;
 int SendMessageA (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,scalar_t__) ;
 int ZeroMemory (TYPE_3__*,int) ;
 int memcpy (TYPE_1__*,scalar_t__,int) ;
 int wcslen (scalar_t__) ;

PROGRAM*
PROGRAM_AddProgram(PROGGROUP* hGroup, HICON hIcon, LPCWSTR lpszName,
                   INT x, INT y, LPCWSTR lpszCmdLine, LPCWSTR lpszIconFile, INT nIconIndex,
                   LPCWSTR lpszWorkDir, INT nHotKey, INT nCmdShow, BOOL bNewVDM)
{
    PROGRAM* hProgram;
    PROGRAM* hPrior;
    PROGRAM** p;
    LPWSTR hCmdLine;
    LPWSTR hIconFile;
    LPWSTR hName;
    LPWSTR hWorkDir;
    LVITEMW lvItem;
    INT iItem;

    hProgram = Alloc(HEAP_ZERO_MEMORY, sizeof(*hProgram));
    hName = Alloc(HEAP_ZERO_MEMORY, (wcslen(lpszName) + 1) * sizeof(WCHAR));
    hCmdLine = Alloc(HEAP_ZERO_MEMORY, (wcslen(lpszCmdLine) + 1) * sizeof(WCHAR));
    hIconFile = Alloc(HEAP_ZERO_MEMORY, (wcslen(lpszIconFile) + 1) * sizeof(WCHAR));
    hWorkDir = Alloc(HEAP_ZERO_MEMORY, (wcslen(lpszWorkDir) + 1) * sizeof(WCHAR));
    if (!hProgram || !hName || !hCmdLine || !hIconFile || !hWorkDir)
    {
        MAIN_MessageBoxIDS(IDS_OUT_OF_MEMORY, IDS_ERROR, MB_OK);
        if (hProgram) Free(hProgram);
        if (hName) Free(hName);
        if (hCmdLine) Free(hCmdLine);
        if (hIconFile) Free(hIconFile);
        if (hWorkDir) Free(hWorkDir);
        return ((void*)0);
    }
    memcpy(hName , lpszName , (wcslen(lpszName) + 1) * sizeof(WCHAR));
    memcpy(hCmdLine , lpszCmdLine , (wcslen(lpszCmdLine) + 1) * sizeof(WCHAR));
    memcpy(hIconFile, lpszIconFile, (wcslen(lpszIconFile) + 1) * sizeof(WCHAR));
    memcpy(hWorkDir , lpszWorkDir , (wcslen(lpszWorkDir) + 1) * sizeof(WCHAR));

    hGroup->hActiveProgram = hProgram;

    hPrior = ((void*)0);
    for (p = &hGroup->hPrograms; *p; p = &hPrior->hNext)
        hPrior = *p;
    *p = hProgram;

    hProgram->hGroup = hGroup;
    hProgram->hPrior = hPrior;
    hProgram->hNext = ((void*)0);
    hProgram->hName = hName;
    hProgram->hCmdLine = hCmdLine;
    hProgram->hIconFile = hIconFile;
    hProgram->nIconIndex = nIconIndex;
    hProgram->hWorkDir = hWorkDir;
    hProgram->hIcon = hIcon;
    hProgram->nCmdShow = nCmdShow;
    hProgram->nHotKey = nHotKey;
    hProgram->bNewVDM = bNewVDM;
    hProgram->TagsSize = 0;
    hProgram->Tags = ((void*)0);

    ZeroMemory(&lvItem, sizeof(lvItem));
    lvItem.mask = LVIF_PARAM | LVIF_IMAGE | LVIF_TEXT;
    lvItem.pszText = (LPWSTR)lpszName;
    lvItem.lParam = (LPARAM)hProgram;
    lvItem.iImage = ImageList_ReplaceIcon(hGroup->hListLarge, -1, hIcon);
    DestroyIcon(hIcon);

    lvItem.iItem = SendMessageA(hGroup->hListView, LVM_GETITEMCOUNT, 0, 0);
    iItem = SendMessageW(hGroup->hListView, LVM_INSERTITEMW, 0, (LPARAM)&lvItem);
    hProgram->iItem = iItem;
    if (x != -1 && y != -1)
        SendMessageA(hGroup->hListView, LVM_SETITEMPOSITION, lvItem.iItem, MAKELPARAM(x, y));

    return hProgram;
}
