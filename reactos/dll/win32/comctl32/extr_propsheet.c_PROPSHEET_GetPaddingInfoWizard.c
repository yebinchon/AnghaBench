
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {scalar_t__ y; int x; } ;
struct TYPE_10__ {int dwFlags; } ;
struct TYPE_12__ {TYPE_1__ ppshheader; scalar_t__ hasHelp; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; int left; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ PropSheetInfo ;
typedef TYPE_4__ POINT ;
typedef TYPE_5__ PADDING_INFO ;
typedef int INT ;
typedef int HWND ;


 int ERR (char*) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int IDCANCEL ;
 int IDC_NEXT_BUTTON ;
 int IDC_SUNKEN_LINE ;
 int IDHELP ;
 int INTRNL_ANY_WIZARD ;
 int MapWindowPoints (int ,int ,TYPE_4__*,int) ;
 int TRACE (char*) ;

__attribute__((used)) static PADDING_INFO PROPSHEET_GetPaddingInfoWizard(HWND hwndDlg, const PropSheetInfo*
 psInfo)
{
  PADDING_INFO padding;
  RECT rc;
  HWND hwndControl;
  INT idButton;
  POINT ptButton, ptLine;

  TRACE("\n");
  if (psInfo->hasHelp)
  {
 idButton = IDHELP;
  }
  else
  {
    if (psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD)
    {
 idButton = IDC_NEXT_BUTTON;
    }
    else
    {

 idButton = IDCANCEL;
    }
  }

  hwndControl = GetDlgItem(hwndDlg, idButton);
  GetWindowRect(hwndControl, &rc);
  MapWindowPoints( 0, hwndDlg, (POINT *)&rc, 2 );
  ptButton.x = rc.left;
  ptButton.y = rc.top;


  hwndControl = GetDlgItem(hwndDlg, IDC_SUNKEN_LINE);
  GetWindowRect(hwndControl, &rc);
  MapWindowPoints( 0, hwndDlg, (POINT *)&rc, 2 );
  ptLine.x = rc.left;
  ptLine.y = rc.bottom;

  padding.y = ptButton.y - ptLine.y;

  if (padding.y < 0)
   ERR("padding negative ! Please report this !\n");


  padding.x = padding.y;
  return padding;
}
