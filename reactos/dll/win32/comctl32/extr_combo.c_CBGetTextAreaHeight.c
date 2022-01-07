
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_12__ {int wState; int dwStyle; void* editHeight; void* fixedOwnerDrawHeight; int owner; int self; scalar_t__ hFont; } ;
struct TYPE_11__ {int itemID; void* itemHeight; scalar_t__ itemData; int itemWidth; void* CtlID; void* CtlType; } ;
struct TYPE_10__ {int right; } ;
struct TYPE_9__ {void* tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ MEASUREITEMSTRUCT ;
typedef TYPE_4__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef void* INT ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;


 int CBF_MEASUREITEM ;
 int CBS_OWNERDRAWFIXED ;
 scalar_t__ CB_OWNERDRAWN (TYPE_4__*) ;
 int GWLP_ID ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetDC (int ) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int GetWindowLongPtrW (int ,int ) ;
 void* ODT_COMBOBOX ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendMessageW (int ,int ,void*,int ) ;
 int WM_MEASUREITEM ;

__attribute__((used)) static INT CBGetTextAreaHeight(
  HWND hwnd,
  LPHEADCOMBO lphc)
{
  INT iTextItemHeight;

  if( lphc->editHeight )
  {
    iTextItemHeight = lphc->editHeight;
  }
  else
  {
    TEXTMETRICW tm;
    HDC hDC = GetDC(hwnd);
    HFONT hPrevFont = 0;
    INT baseUnitY;

    if (lphc->hFont)
      hPrevFont = SelectObject( hDC, lphc->hFont );

    GetTextMetricsW(hDC, &tm);

    baseUnitY = tm.tmHeight;

    if( hPrevFont )
      SelectObject( hDC, hPrevFont );

    ReleaseDC(hwnd, hDC);

    iTextItemHeight = baseUnitY + 4;
  }





  if ( CB_OWNERDRAWN(lphc) &&
       (lphc->wState & CBF_MEASUREITEM) )
  {
    MEASUREITEMSTRUCT measureItem;
    RECT clientRect;
    INT originalItemHeight = iTextItemHeight;
    UINT id = (UINT)GetWindowLongPtrW( lphc->self, GWLP_ID );




    GetClientRect(hwnd, &clientRect);

    lphc->wState &= ~CBF_MEASUREITEM;




    measureItem.CtlType = ODT_COMBOBOX;
    measureItem.CtlID = id;
    measureItem.itemID = -1;
    measureItem.itemWidth = clientRect.right;
    measureItem.itemHeight = iTextItemHeight - 6;
    measureItem.itemData = 0;
    SendMessageW(lphc->owner, WM_MEASUREITEM, id, (LPARAM)&measureItem);
    iTextItemHeight = 6 + measureItem.itemHeight;





    if (lphc->dwStyle & CBS_OWNERDRAWFIXED)
    {
      measureItem.CtlType = ODT_COMBOBOX;
      measureItem.CtlID = id;
      measureItem.itemID = 0;
      measureItem.itemWidth = clientRect.right;
      measureItem.itemHeight = originalItemHeight;
      measureItem.itemData = 0;
      SendMessageW(lphc->owner, WM_MEASUREITEM, id, (LPARAM)&measureItem);
      lphc->fixedOwnerDrawHeight = measureItem.itemHeight;
    }




    lphc->editHeight = iTextItemHeight;
  }

  return iTextItemHeight;
}
