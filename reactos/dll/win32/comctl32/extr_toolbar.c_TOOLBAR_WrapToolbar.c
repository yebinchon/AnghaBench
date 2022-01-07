
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int fsState; scalar_t__ cx; int fsStyle; scalar_t__ iBitmap; } ;
struct TYPE_7__ {size_t right; size_t left; } ;
struct TYPE_8__ {int dwStyle; int dwExStyle; size_t nIndent; size_t nButtonWidth; int nBitmapWidth; size_t nNumButtons; TYPE_1__ client_rect; TYPE_3__* buttons; } ;
typedef TYPE_2__ TOOLBAR_INFO ;
typedef TYPE_3__ TBUTTON_INFO ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 int BTNS_DROPDOWN ;
 int BTNS_SEP ;
 int CCS_VERT ;
 scalar_t__ DDARROW_WIDTH ;
 scalar_t__ FALSE ;
 size_t SEPARATOR_WIDTH ;
 int TBSTATE_HIDDEN ;
 int TBSTATE_WRAP ;
 int TBSTYLE_EX_VERTICAL ;
 int TBSTYLE_WRAPABLE ;
 int TRACE (char*,size_t,int,...) ;
 scalar_t__ TRUE ;
 scalar_t__ button_has_ddarrow (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void
TOOLBAR_WrapToolbar(TOOLBAR_INFO *infoPtr)
{
    TBUTTON_INFO *btnPtr;
    INT x, cx, i, j, width;
    BOOL bButtonWrap;




    if( !(infoPtr->dwStyle & TBSTYLE_WRAPABLE) &&
 !(infoPtr->dwExStyle & TBSTYLE_EX_VERTICAL) ) return;

    btnPtr = infoPtr->buttons;
    x = infoPtr->nIndent;
    width = infoPtr->client_rect.right - infoPtr->client_rect.left;

    bButtonWrap = FALSE;

    TRACE("start ButtonWidth=%d, BitmapWidth=%d, width=%d, nIndent=%d\n",
   infoPtr->nButtonWidth, infoPtr->nBitmapWidth, width,
   infoPtr->nIndent);

    for (i = 0; i < infoPtr->nNumButtons; i++ )
    {
 btnPtr[i].fsState &= ~TBSTATE_WRAP;

 if (btnPtr[i].fsState & TBSTATE_HIDDEN)
     continue;

        if (btnPtr[i].cx > 0)
            cx = btnPtr[i].cx;

 else if ((btnPtr[i].fsStyle & BTNS_SEP) &&
            !(infoPtr->dwStyle & CCS_VERT))
            cx = (btnPtr[i].iBitmap > 0) ? btnPtr[i].iBitmap : SEPARATOR_WIDTH;
 else
     cx = infoPtr->nButtonWidth;

        if (!btnPtr[i].cx && button_has_ddarrow( infoPtr, btnPtr + i ))
            cx += DDARROW_WIDTH;




 if( bButtonWrap &&
  (btnPtr[i].fsStyle & BTNS_SEP) &&
  (i + 1 < infoPtr->nNumButtons ) &&
  (btnPtr[i + 1].fsStyle & BTNS_SEP) )
 {
     TRACE("wrap point 1 btn %d style %02x\n", i, btnPtr[i].fsStyle);
     btnPtr[i].fsState |= TBSTATE_WRAP;
     x = infoPtr->nIndent;
     i++;
     bButtonWrap = FALSE;
     continue;
 }




        if ((x + cx - (infoPtr->nButtonWidth - infoPtr->nBitmapWidth) / 2 > width) ||
            ((x == infoPtr->nIndent) && (cx > width)))
 {
     BOOL bFound = FALSE;




     while( ( ((btnPtr[i].fsStyle & BTNS_SEP) &&
        !(btnPtr[i].fsStyle & BTNS_DROPDOWN)) ||
       (btnPtr[i].fsState & TBSTATE_HIDDEN) ) &&
   i < infoPtr->nNumButtons )
     {
  i++;
  bFound = TRUE;
     }

     if( bFound && i < infoPtr->nNumButtons )
     {
  i--;
  TRACE("wrap point 2 btn %d style %02x, x=%d, cx=%d\n",
        i, btnPtr[i].fsStyle, x, cx);
  btnPtr[i].fsState |= TBSTATE_WRAP;
  x = infoPtr->nIndent;
  bButtonWrap = FALSE;
  continue;
     }
     else if ( i >= infoPtr->nNumButtons)
  break;



     for ( j = i - 1; j >= 0 && !(btnPtr[j].fsState & TBSTATE_WRAP); j--)
     {
  if ((btnPtr[j].fsStyle & BTNS_SEP) &&
   !(btnPtr[j].fsState & TBSTATE_HIDDEN))
  {
      bFound = TRUE;
      i = j;
      TRACE("wrap point 3 btn %d style %02x, x=%d, cx=%d\n",
     i, btnPtr[i].fsStyle, x, cx);
      x = infoPtr->nIndent;
      btnPtr[j].fsState |= TBSTATE_WRAP;
      bButtonWrap = FALSE;
      break;
  }
     }



     if (!bFound)
     {
  for ( j = i - 1;
   j >= 0 && !(btnPtr[j].fsState & TBSTATE_WRAP); j--)
  {
      if (btnPtr[j].fsState & TBSTATE_HIDDEN)
   continue;

      bFound = TRUE;
      i = j;
      TRACE("wrap point 4 btn %d style %02x, x=%d, cx=%d\n",
     i, btnPtr[i].fsStyle, x, cx);
      x = infoPtr->nIndent;
      btnPtr[j].fsState |= TBSTATE_WRAP;
      bButtonWrap = TRUE;
      break;
  }
     }


     if (!bFound)
     {
  TRACE("wrap point 5 btn %d style %02x, x=%d, cx=%d\n",
        i, btnPtr[i].fsStyle, x, cx);
  btnPtr[i].fsState |= TBSTATE_WRAP;
  x = infoPtr->nIndent;
  if (btnPtr[i].fsStyle & BTNS_SEP )
      bButtonWrap = FALSE;
  else
      bButtonWrap = TRUE;
     }
 }
 else {
     TRACE("wrap point 6 btn %d style %02x, x=%d, cx=%d\n",
    i, btnPtr[i].fsStyle, x, cx);
     x += cx;
 }
    }
}
