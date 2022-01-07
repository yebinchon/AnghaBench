
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_4__ {scalar_t__ zoomlevel; int * hdc2; int * hdc; int saved_pages_shown; int pages_shown; scalar_t__ pageCapacity; int * pageEnds; scalar_t__ page; TYPE_1__ window; } ;
typedef int HWND ;
typedef int HBITMAP ;


 int DeleteDC (int *) ;
 int DeleteObject (int ) ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int GetCurrentObject (int *,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDC_PREVIEW ;
 int OBJ_BITMAP ;
 TYPE_2__ preview ;
 int preview_bar_show (int ,int ) ;

void close_preview(HWND hMainWnd)
{
    HWND hwndPreview = GetDlgItem(hMainWnd, IDC_PREVIEW);
    preview.window.right = 0;
    preview.window.bottom = 0;
    preview.page = 0;
    HeapFree(GetProcessHeap(), 0, preview.pageEnds);
    preview.pageEnds = ((void*)0);
    preview.pageCapacity = 0;
    if (preview.zoomlevel > 0)
        preview.pages_shown = preview.saved_pages_shown;
    if(preview.hdc) {
        HBITMAP oldbm = GetCurrentObject(preview.hdc, OBJ_BITMAP);
        DeleteDC(preview.hdc);
        DeleteObject(oldbm);
        preview.hdc = ((void*)0);
    }
    if(preview.hdc2) {
        HBITMAP oldbm = GetCurrentObject(preview.hdc2, OBJ_BITMAP);
        DeleteDC(preview.hdc2);
        DeleteObject(oldbm);
        preview.hdc2 = ((void*)0);
    }

    preview_bar_show(hMainWnd, FALSE);
    DestroyWindow(hwndPreview);
}
