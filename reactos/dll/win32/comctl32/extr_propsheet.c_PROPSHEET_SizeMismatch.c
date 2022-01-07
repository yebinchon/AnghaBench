
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; } ;
struct TYPE_8__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ PropSheetInfo ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_TABCONTROL ;
 int MapDialogRect (int ,TYPE_1__*) ;
 int SetRect (TYPE_1__*,int ,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static BOOL PROPSHEET_SizeMismatch(HWND hwndDlg, const PropSheetInfo* psInfo)
{
  HWND hwndTabCtrl = GetDlgItem(hwndDlg, IDC_TABCONTROL);
  RECT rcOrigTab, rcPage;




  GetClientRect(hwndTabCtrl, &rcOrigTab);
  TRACE("orig tab %s\n", wine_dbgstr_rect(&rcOrigTab));




  SetRect(&rcPage, 0, 0, psInfo->width, psInfo->height);
  MapDialogRect(hwndDlg, &rcPage);
  TRACE("biggest page %s\n", wine_dbgstr_rect(&rcPage));

  if ( (rcPage.right - rcPage.left) != (rcOrigTab.right - rcOrigTab.left) )
    return TRUE;
  if ( (rcPage.bottom - rcPage.top) != (rcOrigTab.bottom - rcOrigTab.top) )
    return TRUE;

  return FALSE;
}
