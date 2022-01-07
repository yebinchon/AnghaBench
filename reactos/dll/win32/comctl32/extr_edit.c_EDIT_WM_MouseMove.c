
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hwndSelf; int region_posx; int region_posy; int flags; int selection_end; int selection_start; int bCaptureState; } ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 scalar_t__ EDIT_CharFromPos (TYPE_1__*,scalar_t__,scalar_t__,int *) ;
 int EDIT_ConfinePoint (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,scalar_t__,int ) ;
 int EDIT_SetCaretPos (TYPE_1__*,int ,int) ;
 int EF_AFTER_WRAP ;
 scalar_t__ GetCapture () ;

__attribute__((used)) static LRESULT EDIT_WM_MouseMove(EDITSTATE *es, INT x, INT y)
{
 INT e;
 BOOL after_wrap;
 INT prex, prey;




        if (!es->bCaptureState || GetCapture() != es->hwndSelf)
  return 0;





 prex = x; prey = y;
 EDIT_ConfinePoint(es, &x, &y);
 es->region_posx = (prex < x) ? -1 : ((prex > x) ? 1 : 0);
 es->region_posy = (prey < y) ? -1 : ((prey > y) ? 1 : 0);
 e = EDIT_CharFromPos(es, x, y, &after_wrap);
 EDIT_EM_SetSel(es, es->selection_start, e, after_wrap);
 EDIT_SetCaretPos(es,es->selection_end,es->flags & EF_AFTER_WRAP);
 return 0;
}
