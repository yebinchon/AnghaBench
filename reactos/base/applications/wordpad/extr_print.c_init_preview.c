
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page; scalar_t__ zoomlevel; scalar_t__ zoomratio; int wszFileName; scalar_t__ hdc2; scalar_t__ hdc; } ;
typedef int LPWSTR ;
typedef int HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;


 int CreateWindowExW (int ,int ,int *,int,int ,int ,int,int,int ,int ,int ,int *) ;
 int GetModuleHandleW (int ) ;
 scalar_t__ IDC_PREVIEW ;
 int TRUE ;
 int WS_CHILD ;
 int WS_HSCROLL ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 TYPE_1__ preview ;
 int preview_bar_show (int ,int ) ;
 int wszPreviewWndClass ;

void init_preview(HWND hMainWnd, LPWSTR wszFileName)
{
    HINSTANCE hInstance = GetModuleHandleW(0);
    preview.page = 1;
    preview.hdc = 0;
    preview.hdc2 = 0;
    preview.wszFileName = wszFileName;
    preview.zoomratio = 0;
    preview.zoomlevel = 0;
    preview_bar_show(hMainWnd, TRUE);

    CreateWindowExW(0, wszPreviewWndClass, ((void*)0),
            WS_VISIBLE | WS_CHILD | WS_VSCROLL | WS_HSCROLL,
            0, 0, 200, 10, hMainWnd, (HMENU)IDC_PREVIEW, hInstance, ((void*)0));
}
