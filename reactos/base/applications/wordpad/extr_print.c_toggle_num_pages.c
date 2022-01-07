
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int pages_shown; scalar_t__ zoomlevel; int saved_pages_shown; } ;
typedef int HWND ;
typedef int HINSTANCE ;


 int GetDlgItem (int ,int ) ;
 int GetModuleHandleW (int ) ;
 int IDC_PREVIEW ;
 int IDC_REBAR ;
 int ID_PREVIEW_NUMPAGES ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAX_STRING_LEN ;
 int STRING_PREVIEW_ONEPAGE ;
 int STRING_PREVIEW_TWOPAGES ;
 int SetWindowTextW (int ,int *) ;
 int TRUE ;
 TYPE_1__ preview ;
 int update_preview (int ) ;
 int update_preview_sizes (int ,int ) ;

__attribute__((used)) static void toggle_num_pages(HWND hMainWnd)
{
    HWND hReBar = GetDlgItem(hMainWnd, IDC_REBAR);
    WCHAR name[MAX_STRING_LEN];
    HINSTANCE hInst = GetModuleHandleW(0);
    int nPreviewPages;

    preview.pages_shown = preview.pages_shown > 1 ? 1 : 2;

    nPreviewPages = preview.zoomlevel > 0 ? preview.saved_pages_shown :
                                            preview.pages_shown;

    LoadStringW(hInst, nPreviewPages > 1 ? STRING_PREVIEW_ONEPAGE :
                                           STRING_PREVIEW_TWOPAGES,
                name, MAX_STRING_LEN);

    SetWindowTextW(GetDlgItem(hReBar, ID_PREVIEW_NUMPAGES), name);
    update_preview_sizes(GetDlgItem(hMainWnd, IDC_PREVIEW), TRUE);
    update_preview(hMainWnd);
}
