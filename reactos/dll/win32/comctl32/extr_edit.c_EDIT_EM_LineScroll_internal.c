
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_7__ {scalar_t__ line_height; int style; scalar_t__ x_offset; scalar_t__ text_width; scalar_t__ y_offset; scalar_t__ line_count; scalar_t__ char_width; int flags; int hwndSelf; TYPE_2__ format_rect; } ;
typedef int RECT ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_EM_PosFromChar (TYPE_1__*,scalar_t__,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_1__*) ;
 int EF_HSCROLL_TRACK ;
 int EF_VSCROLL_TRACK ;
 int EN_HSCROLL ;
 int EN_VSCROLL ;
 int ES_MULTILINE ;
 int FALSE ;
 int GetClientRect (int ,int *) ;
 int IntersectRect (int *,int *,TYPE_2__*) ;
 scalar_t__ LOWORD (int ) ;
 int SW_INVALIDATE ;
 int ScrollWindowEx (int ,scalar_t__,scalar_t__,int *,int *,int *,int *,int ) ;
 int TRUE ;
 scalar_t__ max (int ,scalar_t__) ;

__attribute__((used)) static BOOL EDIT_EM_LineScroll_internal(EDITSTATE *es, INT dx, INT dy)
{
 INT nyoff;
 INT x_offset_in_pixels;
 INT lines_per_page = (es->format_rect.bottom - es->format_rect.top) /
         es->line_height;

 if (es->style & ES_MULTILINE)
 {
     x_offset_in_pixels = es->x_offset;
 }
 else
 {
     dy = 0;
     x_offset_in_pixels = (short)LOWORD(EDIT_EM_PosFromChar(es, es->x_offset, FALSE));
 }

 if (-dx > x_offset_in_pixels)
  dx = -x_offset_in_pixels;
 if (dx > es->text_width - x_offset_in_pixels)
  dx = es->text_width - x_offset_in_pixels;
 nyoff = max(0, es->y_offset + dy);
 if (nyoff >= es->line_count - lines_per_page)
  nyoff = max(0, es->line_count - lines_per_page);
 dy = (es->y_offset - nyoff) * es->line_height;
 if (dx || dy) {
  RECT rc1;
  RECT rc;

  es->y_offset = nyoff;
  if(es->style & ES_MULTILINE)
      es->x_offset += dx;
  else
      es->x_offset += dx / es->char_width;

  GetClientRect(es->hwndSelf, &rc1);
  IntersectRect(&rc, &rc1, &es->format_rect);
  ScrollWindowEx(es->hwndSelf, -dx, dy,
    ((void*)0), &rc, ((void*)0), ((void*)0), SW_INVALIDATE);

  EDIT_UpdateScrollInfo(es);
 }
 if (dx && !(es->flags & EF_HSCROLL_TRACK))
  EDIT_NOTIFY_PARENT(es, EN_HSCROLL);
 if (dy && !(es->flags & EF_VSCROLL_TRACK))
  EDIT_NOTIFY_PARENT(es, EN_VSCROLL);
 return TRUE;
}
