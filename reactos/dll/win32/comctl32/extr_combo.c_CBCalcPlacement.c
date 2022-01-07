
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ droppedWidth; } ;
struct TYPE_14__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__* LPRECT ;
typedef TYPE_2__* LPHEADCOMBO ;
typedef int HWND ;


 scalar_t__ CBGetTextAreaHeight (int ,TYPE_2__*) ;
 scalar_t__ CBS_DROPDOWN ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_2__*) ;
 scalar_t__ COMBO_EDITBUTTONSPACE () ;
 int COMBO_XBORDERSIZE () ;
 int COMBO_YBORDERSIZE () ;
 int CopyRect (TYPE_1__*,TYPE_1__*) ;
 int EDIT_CONTROL_PADDING () ;
 int GetClientRect (int ,TYPE_1__*) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int InflateRect (TYPE_1__*,int ,int ) ;
 int SM_CXVSCROLL ;
 int TRACE (char*,int ) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void CBCalcPlacement(
  HWND hwnd,
  LPHEADCOMBO lphc,
  LPRECT lprEdit,
  LPRECT lprButton,
  LPRECT lprLB)
{



  GetClientRect(hwnd, lprEdit);




  InflateRect(lprEdit, -COMBO_XBORDERSIZE(), -COMBO_YBORDERSIZE());




  lprEdit->bottom = lprEdit->top + CBGetTextAreaHeight(hwnd, lphc);




  CopyRect(lprButton, lprEdit);




  if( CB_GETTYPE(lphc) == CBS_SIMPLE )
    lprButton->left = lprButton->right = lprButton->bottom = 0;
  else
  {





    lprButton->left = lprButton->right - GetSystemMetrics(SM_CXVSCROLL);
    lprEdit->right = lprButton->left;
  }





  if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
  {
    lprEdit->right -= COMBO_EDITBUTTONSPACE();
  }




  if (CB_GETTYPE(lphc) != CBS_DROPDOWNLIST)
  {
    InflateRect(lprEdit, -EDIT_CONTROL_PADDING(), -EDIT_CONTROL_PADDING());
  }




  if( CB_GETTYPE(lphc) == CBS_SIMPLE )
  {



    GetClientRect(hwnd, lprLB);




    lprLB->top = lprEdit->bottom + COMBO_YBORDERSIZE();
  }
  else
  {



    if (lphc->droppedWidth < (lprButton->right + COMBO_XBORDERSIZE()))
    {
      lprLB->right = lprLB->left + (lprButton->right + COMBO_XBORDERSIZE());






      if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
 lprLB->right -= COMBO_EDITBUTTONSPACE();
    }
    else
       lprLB->right = lprLB->left + lphc->droppedWidth;
  }


  if (lprEdit->right < lprEdit->left)
    lprEdit->right = lprEdit->left;

  TRACE("\ttext\t= (%s)\n", wine_dbgstr_rect(lprEdit));

  TRACE("\tbutton\t= (%s)\n", wine_dbgstr_rect(lprButton));

  TRACE("\tlbox\t= (%s)\n", wine_dbgstr_rect(lprLB));
}
