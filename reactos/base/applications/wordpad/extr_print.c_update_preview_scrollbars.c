
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sbi ;
struct TYPE_8__ {int cx; int cy; } ;
struct TYPE_11__ {scalar_t__ zoomlevel; int pages_shown; TYPE_1__ bmScaledSize; } ;
struct TYPE_10__ {int bottom; int right; } ;
struct TYPE_9__ {int cbSize; int fMask; int nMax; int nPage; scalar_t__ nMin; } ;
typedef TYPE_2__ SCROLLINFO ;
typedef TYPE_3__ RECT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_3__*) ;
 int SB_HORZ ;
 int SB_VERT ;
 int SIF_PAGE ;
 int SIF_RANGE ;
 int SetScrollInfo (int ,int ,TYPE_2__*,int ) ;
 int TRUE ;
 int min_spacing ;
 TYPE_5__ preview ;

__attribute__((used)) static void update_preview_scrollbars(HWND hwndPreview, RECT *window)
{
    SCROLLINFO sbi;
    sbi.cbSize = sizeof(sbi);
    sbi.fMask = SIF_PAGE|SIF_RANGE;
    sbi.nMin = 0;
    if (preview.zoomlevel == 0)
    {

        sbi.nMax = 0;
        sbi.nPage = window->right;
        SetScrollInfo(hwndPreview, SB_HORZ, &sbi, TRUE);
        sbi.nPage = window->bottom;
        SetScrollInfo(hwndPreview, SB_VERT, &sbi, TRUE);
    } else {
        sbi.nMax = preview.bmScaledSize.cx * preview.pages_shown +
                   min_spacing * (preview.pages_shown + 1);
        sbi.nPage = window->right;
        SetScrollInfo(hwndPreview, SB_HORZ, &sbi, TRUE);


        GetClientRect(hwndPreview, window);
        sbi.nMax = preview.bmScaledSize.cy + min_spacing * 2;
        sbi.nPage = window->bottom;
        SetScrollInfo(hwndPreview, SB_VERT, &sbi, TRUE);
    }
}
