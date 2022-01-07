
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nPages; TYPE_1__* proppage; scalar_t__ hImageList; } ;
struct TYPE_6__ {scalar_t__ pszText; int mask; int iImage; int cchTextMax; } ;
struct TYPE_5__ {scalar_t__ pszText; scalar_t__ hasIcon; } ;
typedef TYPE_2__ TCITEMW ;
typedef TYPE_3__ PropSheetInfo ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int GetDlgItem (int ,int ) ;
 int IDC_TABCONTROL ;
 int MAX_TABTEXT_LENGTH ;
 int SendMessageW (int ,int ,int,int ) ;
 int TCIF_IMAGE ;
 int TCIF_TEXT ;
 int TCM_INSERTITEMW ;
 int TCM_SETIMAGELIST ;
 int TRACE (char*) ;
 int TRUE ;
 int WM_SETREDRAW ;

__attribute__((used)) static BOOL PROPSHEET_CreateTabControl(HWND hwndParent,
                                       const PropSheetInfo * psInfo)
{
  HWND hwndTabCtrl = GetDlgItem(hwndParent, IDC_TABCONTROL);
  TCITEMW item;
  int i, nTabs;
  int iImage = 0;

  TRACE("\n");
  item.mask = TCIF_TEXT;
  item.cchTextMax = MAX_TABTEXT_LENGTH;

  nTabs = psInfo->nPages;




  if (psInfo->hImageList)
  {
    SendMessageW(hwndTabCtrl, TCM_SETIMAGELIST, 0, (LPARAM)psInfo->hImageList);
  }

  SendMessageW(hwndTabCtrl, WM_SETREDRAW, 0, 0);
  for (i = 0; i < nTabs; i++)
  {
    if ( psInfo->proppage[i].hasIcon )
    {
      item.mask |= TCIF_IMAGE;
      item.iImage = iImage++;
    }
    else
    {
      item.mask &= ~TCIF_IMAGE;
    }

    item.pszText = (LPWSTR) psInfo->proppage[i].pszText;
    SendMessageW(hwndTabCtrl, TCM_INSERTITEMW, i, (LPARAM)&item);
  }
  SendMessageW(hwndTabCtrl, WM_SETREDRAW, 1, 0);

  return TRUE;
}
