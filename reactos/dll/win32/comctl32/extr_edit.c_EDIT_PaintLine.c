
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int right; int left; } ;
struct TYPE_12__ {int style; scalar_t__ y_offset; scalar_t__ line_count; scalar_t__ x_offset; scalar_t__ selection_start; scalar_t__ selection_end; int flags; TYPE_4__ format_rect; TYPE_1__* first_line_def; } ;
struct TYPE_11__ {int width; struct TYPE_11__* next; } ;
typedef scalar_t__ SCRIPT_STRING_ANALYSIS ;
typedef int LRESULT ;
typedef TYPE_1__ LINEDEF ;
typedef scalar_t__ INT ;
typedef int HDC ;
typedef TYPE_2__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 scalar_t__ EDIT_EM_LineIndex (TYPE_2__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineLength (TYPE_2__*,scalar_t__) ;
 int EDIT_EM_PosFromChar (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ EDIT_PaintText (TYPE_2__*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ EDIT_UpdateUniscribeData (TYPE_2__*,int ,scalar_t__) ;
 int EF_FOCUSED ;
 int ES_CENTER ;
 int ES_MULTILINE ;
 int ES_NOHIDESEL ;
 int ES_RIGHT ;
 int FALSE ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int ScriptStringOut (scalar_t__,scalar_t__,scalar_t__,int ,TYPE_4__*,scalar_t__,scalar_t__,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 scalar_t__ get_vertical_line_count (TYPE_2__*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void EDIT_PaintLine(EDITSTATE *es, HDC dc, INT line, BOOL rev)
{
 INT s = 0;
 INT e = 0;
 INT li = 0;
 INT ll = 0;
 INT x;
 INT y;
 LRESULT pos;
 SCRIPT_STRING_ANALYSIS ssa;

 if (es->style & ES_MULTILINE) {
  INT vlc = get_vertical_line_count(es);

  if ((line < es->y_offset) || (line > es->y_offset + vlc) || (line >= es->line_count))
   return;
 } else if (line)
  return;

 TRACE("line=%d\n", line);

 ssa = EDIT_UpdateUniscribeData(es, dc, line);
 pos = EDIT_EM_PosFromChar(es, EDIT_EM_LineIndex(es, line), FALSE);
 x = (short)LOWORD(pos);
 y = (short)HIWORD(pos);

 if (es->style & ES_MULTILINE)
 {
  int line_idx = line;
  x = -es->x_offset;
  if (es->style & ES_RIGHT || es->style & ES_CENTER)
  {
   LINEDEF *line_def = es->first_line_def;
   int w, lw;

   while (line_def && line_idx)
   {
    line_def = line_def->next;
    line_idx--;
   }
   w = es->format_rect.right - es->format_rect.left;
   lw = line_def->width;

   if (es->style & ES_RIGHT)
    x = w - (lw - x);
   else if (es->style & ES_CENTER)
    x += (w - lw) / 2;
  }
  x += es->format_rect.left;
 }

 if (rev)
 {
  li = EDIT_EM_LineIndex(es, line);
  ll = EDIT_EM_LineLength(es, li);
  s = min(es->selection_start, es->selection_end);
  e = max(es->selection_start, es->selection_end);
  s = min(li + ll, max(li, s));
  e = min(li + ll, max(li, e));
 }

 if (ssa)
  ScriptStringOut(ssa, x, y, 0, &es->format_rect, s - li, e - li, FALSE);
 else if (rev && (s != e) &&
   ((es->flags & EF_FOCUSED) || (es->style & ES_NOHIDESEL))) {
  x += EDIT_PaintText(es, dc, x, y, line, 0, s - li, FALSE);
  x += EDIT_PaintText(es, dc, x, y, line, s - li, e - s, TRUE);
  x += EDIT_PaintText(es, dc, x, y, line, e - li, li + ll - e, FALSE);
 } else
  x += EDIT_PaintText(es, dc, x, y, line, 0, ll, FALSE);
}
