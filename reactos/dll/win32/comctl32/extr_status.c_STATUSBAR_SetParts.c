
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int style; scalar_t__ x; struct TYPE_11__* text; } ;
struct TYPE_10__ {size_t numParts; int Self; scalar_t__ hwndToolTip; TYPE_3__* parts; } ;
struct TYPE_9__ {int cbSize; size_t uId; int * lpszText; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ STATUS_INFO ;
typedef TYPE_3__ STATUSWINDOWPART ;
typedef scalar_t__* LPINT ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int BOOL ;


 TYPE_3__* Alloc (int) ;
 int FALSE ;
 int Free (TYPE_3__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int SBT_OWNERDRAW ;
 int STATUSBAR_SetPartBounds (TYPE_2__*) ;
 size_t SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,size_t,...) ;
 int TRUE ;
 int TTM_ADDTOOLW ;
 int TTM_DELTOOLW ;
 int TTM_GETTOOLCOUNT ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static BOOL
STATUSBAR_SetParts (STATUS_INFO *infoPtr, INT count, LPINT parts)
{
    STATUSWINDOWPART *tmp;
    INT i, oldNumParts;

    TRACE("(%d,%p)\n", count, parts);

    if(!count) return FALSE;

    oldNumParts = infoPtr->numParts;
    infoPtr->numParts = count;
    if (oldNumParts > infoPtr->numParts) {
 for (i = infoPtr->numParts ; i < oldNumParts; i++) {
     if (!(infoPtr->parts[i].style & SBT_OWNERDRAW))
  Free (infoPtr->parts[i].text);
 }
    } else if (oldNumParts < infoPtr->numParts) {
 tmp = Alloc (sizeof(STATUSWINDOWPART) * infoPtr->numParts);
 if (!tmp) return FALSE;
 for (i = 0; i < oldNumParts; i++) {
     tmp[i] = infoPtr->parts[i];
 }
        Free (infoPtr->parts);
 infoPtr->parts = tmp;
    }
    if (oldNumParts == infoPtr->numParts) {
 for (i=0; i < oldNumParts; i++)
     if (infoPtr->parts[i].x != parts[i])
  break;
 if (i==oldNumParts)
     return TRUE;
    }

    for (i = 0; i < infoPtr->numParts; i++)
 infoPtr->parts[i].x = parts[i];

    if (infoPtr->hwndToolTip) {
 INT nTipCount;
 TTTOOLINFOW ti;
 WCHAR wEmpty = 0;

 ZeroMemory (&ti, sizeof(TTTOOLINFOW));
 ti.cbSize = sizeof(TTTOOLINFOW);
 ti.hwnd = infoPtr->Self;
 ti.lpszText = &wEmpty;

 nTipCount = SendMessageW (infoPtr->hwndToolTip, TTM_GETTOOLCOUNT, 0, 0);
 if (nTipCount < infoPtr->numParts) {

     for (i = nTipCount; i < infoPtr->numParts; i++) {
  TRACE("add tool %d\n", i);
  ti.uId = i;
  SendMessageW (infoPtr->hwndToolTip, TTM_ADDTOOLW,
    0, (LPARAM)&ti);
     }
 }
 else if (nTipCount > infoPtr->numParts) {

     for (i = nTipCount - 1; i >= infoPtr->numParts; i--) {
  TRACE("delete tool %d\n", i);
  ti.uId = i;
  SendMessageW (infoPtr->hwndToolTip, TTM_DELTOOLW,
    0, (LPARAM)&ti);
     }
 }
    }
    STATUSBAR_SetPartBounds (infoPtr);
    InvalidateRect(infoPtr->Self, ((void*)0), FALSE);
    return TRUE;
}
