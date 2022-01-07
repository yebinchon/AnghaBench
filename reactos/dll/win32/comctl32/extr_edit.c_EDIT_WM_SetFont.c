
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int style; int flags; int hwndSelf; int selection_end; int line_height; int char_width; int font; } ;
struct TYPE_13__ {int tmAveCharWidth; int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef int RECT ;
typedef int HFONT ;
typedef int HDC ;
typedef TYPE_2__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int CreateCaret (int ,int ,int,int ) ;
 int DestroyCaret () ;
 int EC_LEFTMARGIN ;
 int EC_RIGHTMARGIN ;
 int EC_USEFONTINFO ;
 int EDIT_BuildLineDefs_ML (TYPE_2__*,int ,int ,int ,int *) ;
 int EDIT_CalcLineWidth_SL (TYPE_2__*) ;
 int EDIT_EM_SetMargins (TYPE_2__*,int,int ,int ,int ) ;
 int EDIT_InvalidateUniscribeData (TYPE_2__*) ;
 int EDIT_SetCaretPos (TYPE_2__*,int ,int) ;
 int EDIT_SetRectNP (TYPE_2__*,int *) ;
 int EDIT_UpdateText (TYPE_2__*,int *,int ) ;
 int EF_AFTER_WRAP ;
 int EF_FOCUSED ;
 int ES_MULTILINE ;
 int FALSE ;
 int GetClientRect (int ,int *) ;
 int GetDC (int ) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int ShowCaret (int ) ;
 int TRUE ;
 int get_text_length (TYPE_2__*) ;

__attribute__((used)) static void EDIT_WM_SetFont(EDITSTATE *es, HFONT font, BOOL redraw)
{
 TEXTMETRICW tm;
 HDC dc;
 HFONT old_font = 0;
 RECT clientRect;

 es->font = font;
 EDIT_InvalidateUniscribeData(es);
 dc = GetDC(es->hwndSelf);
 if (font)
  old_font = SelectObject(dc, font);
 GetTextMetricsW(dc, &tm);
 es->line_height = tm.tmHeight;
 es->char_width = tm.tmAveCharWidth;
 if (font)
  SelectObject(dc, old_font);
 ReleaseDC(es->hwndSelf, dc);


 GetClientRect(es->hwndSelf, &clientRect);
 EDIT_SetRectNP(es, &clientRect);
 EDIT_EM_SetMargins(es, EC_LEFTMARGIN | EC_RIGHTMARGIN,
      EC_USEFONTINFO, EC_USEFONTINFO, FALSE);

 if (es->style & ES_MULTILINE)
  EDIT_BuildLineDefs_ML(es, 0, get_text_length(es), 0, ((void*)0));
 else
     EDIT_CalcLineWidth_SL(es);

 if (redraw)
  EDIT_UpdateText(es, ((void*)0), TRUE);
 if (es->flags & EF_FOCUSED) {
  DestroyCaret();
  CreateCaret(es->hwndSelf, 0, 1, es->line_height);
  EDIT_SetCaretPos(es, es->selection_end,
     es->flags & EF_AFTER_WRAP);
  ShowCaret(es->hwndSelf);
 }
}
