
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
struct TYPE_20__ {int flags; int style; scalar_t__ y_offset; scalar_t__ line_count; int hwndSelf; scalar_t__ font; scalar_t__ bEnableState; TYPE_1__ format_rect; } ;
struct TYPE_19__ {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
typedef TYPE_2__ RECT ;
typedef int PAINTSTRUCT ;
typedef scalar_t__ INT ;
typedef scalar_t__ HFONT ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_3__ EDITSTATE ;
typedef int BOOL ;


 scalar_t__ BeginPaint (int ,int *) ;
 int COLOR_GRAYTEXT ;
 int COLOR_WINDOWFRAME ;
 int EDIT_GetLineRect (TYPE_3__*,scalar_t__,int ,int,TYPE_2__*) ;
 int EDIT_InvalidateUniscribeData (TYPE_3__*) ;
 scalar_t__ EDIT_NotifyCtlColor (TYPE_3__*,scalar_t__) ;
 int EDIT_PaintLine (TYPE_3__*,scalar_t__,scalar_t__,int) ;
 int EDIT_UpdateUniscribeData (TYPE_3__*,scalar_t__,scalar_t__) ;
 int EF_FOCUSED ;
 int ES_MULTILINE ;
 int ES_NOHIDESEL ;
 int EndPaint (int ,int *) ;
 int FillRect (scalar_t__,TYPE_2__*,scalar_t__) ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetClipBox (scalar_t__,TYPE_2__*) ;
 int GetSysColor (int ) ;
 scalar_t__ GetSysColorBrush (int ) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int IntersectClipRect (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ IntersectRect (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int PATCOPY ;
 int PatBlt (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int SM_CXBORDER ;
 int SM_CYBORDER ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 int SetTextColor (scalar_t__,int ) ;
 int WS_BORDER ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;
 scalar_t__ get_vertical_line_count (TYPE_3__*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void EDIT_WM_Paint(EDITSTATE *es, HDC hdc)
{
 PAINTSTRUCT ps;
 INT i;
 HDC dc;
 HFONT old_font = 0;
 RECT rc;
 RECT rcClient;
 RECT rcLine;
 RECT rcRgn;
 HBRUSH brush;
 HBRUSH old_brush;
 INT bw, bh;
 BOOL rev = es->bEnableState &&
    ((es->flags & EF_FOCUSED) ||
     (es->style & ES_NOHIDESEL));
        dc = hdc ? hdc : BeginPaint(es->hwndSelf, &ps);



 EDIT_InvalidateUniscribeData(es);
 GetClientRect(es->hwndSelf, &rcClient);


 brush = EDIT_NotifyCtlColor(es, dc);


 IntersectClipRect(dc, rcClient.left, rcClient.top, rcClient.right, rcClient.bottom);

 if(es->style & WS_BORDER) {
  bw = GetSystemMetrics(SM_CXBORDER);
  bh = GetSystemMetrics(SM_CYBORDER);
  rc = rcClient;
  if(es->style & ES_MULTILINE) {
   if(es->style & WS_HSCROLL) rc.bottom+=bh;
   if(es->style & WS_VSCROLL) rc.right+=bw;
  }


  old_brush = SelectObject(dc, GetSysColorBrush(COLOR_WINDOWFRAME));
  PatBlt(dc, rc.left, rc.top, rc.right - rc.left, bh, PATCOPY);
  PatBlt(dc, rc.left, rc.top, bw, rc.bottom - rc.top, PATCOPY);
  PatBlt(dc, rc.left, rc.bottom - 1, rc.right - rc.left, -bw, PATCOPY);
  PatBlt(dc, rc.right - 1, rc.top, -bw, rc.bottom - rc.top, PATCOPY);
  SelectObject(dc, old_brush);


  IntersectClipRect(dc, rc.left+bw, rc.top+bh,
      max(rc.right-bw, rc.left+bw), max(rc.bottom-bh, rc.top+bh));
 }

 GetClipBox(dc, &rc);
 FillRect(dc, &rc, brush);

 IntersectClipRect(dc, es->format_rect.left,
    es->format_rect.top,
    es->format_rect.right,
    es->format_rect.bottom);
 if (es->style & ES_MULTILINE) {
  rc = rcClient;
  IntersectClipRect(dc, rc.left, rc.top, rc.right, rc.bottom);
 }
 if (es->font)
  old_font = SelectObject(dc, es->font);

 if (!es->bEnableState)
  SetTextColor(dc, GetSysColor(COLOR_GRAYTEXT));
 GetClipBox(dc, &rcRgn);
 if (es->style & ES_MULTILINE) {
  INT vlc = get_vertical_line_count(es);
  for (i = es->y_offset ; i <= min(es->y_offset + vlc, es->y_offset + es->line_count - 1) ; i++) {
   EDIT_UpdateUniscribeData(es, dc, i);
   EDIT_GetLineRect(es, i, 0, -1, &rcLine);
   if (IntersectRect(&rc, &rcRgn, &rcLine))
    EDIT_PaintLine(es, dc, i, rev);
  }
 } else {
  EDIT_UpdateUniscribeData(es, dc, 0);
  EDIT_GetLineRect(es, 0, 0, -1, &rcLine);
  if (IntersectRect(&rc, &rcRgn, &rcLine))
   EDIT_PaintLine(es, dc, 0, rev);
 }
 if (es->font)
  SelectObject(dc, old_font);

        if (!hdc)
            EndPaint(es->hwndSelf, &ps);
}
