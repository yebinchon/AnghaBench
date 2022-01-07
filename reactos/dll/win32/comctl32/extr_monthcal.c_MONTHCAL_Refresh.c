
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {int clrWindowText; } ;
struct TYPE_23__ {int todayrect; TYPE_1__* calendars; } ;
struct TYPE_22__ {int rcPaint; } ;
struct TYPE_21__ {int wdays; int title; } ;
typedef int RECT ;
typedef TYPE_2__ PAINTSTRUCT ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef size_t INT ;
typedef int HFONT ;
typedef int HDC ;
typedef int COLORREF ;


 int DIRECTION_BACKWARD ;
 int DIRECTION_FORWARD ;
 int GetBkColor (int ) ;
 int GetCurrentObject (int ,int ) ;
 scalar_t__ IntersectRect (int *,int *,int *) ;
 size_t MONTHCAL_GetCalCount (TYPE_3__*) ;
 int MONTHCAL_PaintButton (TYPE_3__*,int ,int ) ;
 int MONTHCAL_PaintCalendar (TYPE_3__*,int ,TYPE_2__ const*,size_t) ;
 int MONTHCAL_PaintFocusAndCircle (TYPE_3__*,int ,TYPE_2__ const*) ;
 int MONTHCAL_PaintLeadTrailMonths (TYPE_3__*,int ,TYPE_2__ const*) ;
 int MONTHCAL_PaintTitle (TYPE_3__*,int ,TYPE_2__ const*,size_t) ;
 int MONTHCAL_PaintTodayTitle (TYPE_3__*,int ,TYPE_2__ const*) ;
 int MONTHCAL_PaintWeeknumbers (TYPE_3__*,int ,TYPE_2__ const*,size_t) ;
 int OBJ_FONT ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int UnionRect (int *,int *,int *) ;
 TYPE_4__ comctl32_color ;

__attribute__((used)) static void MONTHCAL_Refresh(MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{
  COLORREF old_text_clr, old_bk_clr;
  HFONT old_font;
  INT i;

  old_text_clr = SetTextColor(hdc, comctl32_color.clrWindowText);
  old_bk_clr = GetBkColor(hdc);
  old_font = GetCurrentObject(hdc, OBJ_FONT);

  for (i = 0; i < MONTHCAL_GetCalCount(infoPtr); i++)
  {
    RECT *title = &infoPtr->calendars[i].title;
    RECT r;


    if (IntersectRect(&r, &(ps->rcPaint), title))
        MONTHCAL_PaintTitle(infoPtr, hdc, ps, i);


    UnionRect(&r, &infoPtr->calendars[i].wdays, &infoPtr->todayrect);
    if (IntersectRect(&r, &(ps->rcPaint), &r))
        MONTHCAL_PaintCalendar(infoPtr, hdc, ps, i);


    MONTHCAL_PaintWeeknumbers(infoPtr, hdc, ps, i);
  }


  MONTHCAL_PaintLeadTrailMonths(infoPtr, hdc, ps);


  MONTHCAL_PaintFocusAndCircle(infoPtr, hdc, ps);


  MONTHCAL_PaintTodayTitle(infoPtr, hdc, ps);


  MONTHCAL_PaintButton(infoPtr, hdc, DIRECTION_BACKWARD);
  MONTHCAL_PaintButton(infoPtr, hdc, DIRECTION_FORWARD);


  SetBkColor(hdc, old_bk_clr);
  SelectObject(hdc, old_font);
  SetTextColor(hdc, old_text_clr);
}
