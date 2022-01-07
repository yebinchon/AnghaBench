
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page; int pages_shown; int zoomlevel; } ;
typedef int HWND ;


 int EnableWindow (int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_REBAR ;
 int ID_PREVIEW_NEXTPAGE ;
 int ID_PREVIEW_NUMPAGES ;
 int ID_PREVIEW_PREVPAGE ;
 int ID_PREVIEW_ZOOMIN ;
 int ID_PREVIEW_ZOOMOUT ;
 int is_last_preview_page (int) ;
 TYPE_1__ preview ;

__attribute__((used)) static void update_preview_buttons(HWND hMainWnd)
{
    HWND hReBar = GetDlgItem(hMainWnd, IDC_REBAR);
    EnableWindow(GetDlgItem(hReBar, ID_PREVIEW_PREVPAGE), preview.page > 1);
    EnableWindow(GetDlgItem(hReBar, ID_PREVIEW_NEXTPAGE),
                 !is_last_preview_page(preview.page) &&
                 !is_last_preview_page(preview.page + preview.pages_shown - 1));
    EnableWindow(GetDlgItem(hReBar, ID_PREVIEW_NUMPAGES),
                 preview.pages_shown > 1 ||
                 (!is_last_preview_page(1) && preview.zoomlevel == 0));
    EnableWindow(GetDlgItem(hReBar, ID_PREVIEW_ZOOMIN), preview.zoomlevel < 2);
    EnableWindow(GetDlgItem(hReBar, ID_PREVIEW_ZOOMOUT), preview.zoomlevel > 0);
}
