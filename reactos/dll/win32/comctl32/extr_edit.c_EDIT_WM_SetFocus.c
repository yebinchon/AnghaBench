
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int flags; int style; int hwndSelf; int selection_end; int line_height; int selection_start; } ;
typedef scalar_t__ HTHEME ;
typedef TYPE_1__ EDITSTATE ;


 int CreateCaret (int ,int ,int,int ) ;
 int EDIT_InvalidateText (TYPE_1__*,int ,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_SetCaretPos (TYPE_1__*,int ,int) ;
 int EF_AFTER_WRAP ;
 int EF_FOCUSED ;
 int EN_SETFOCUS ;
 int ES_NOHIDESEL ;
 int RDW_ERASE ;
 int RDW_FRAME ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int *,int) ;
 int ShowCaret (int ) ;

__attribute__((used)) static void EDIT_WM_SetFocus(HTHEME theme, EDITSTATE *es)
{
    UINT flags = RDW_INVALIDATE | RDW_UPDATENOW;

    es->flags |= EF_FOCUSED;

    if (!(es->style & ES_NOHIDESEL))
        EDIT_InvalidateText(es, es->selection_start, es->selection_end);

    CreateCaret(es->hwndSelf, 0, 1, es->line_height);
    EDIT_SetCaretPos(es, es->selection_end, es->flags & EF_AFTER_WRAP);
    ShowCaret(es->hwndSelf);
    EDIT_NOTIFY_PARENT(es, EN_SETFOCUS);

    if (theme)
        flags |= RDW_FRAME | RDW_ERASE;

    RedrawWindow(es->hwndSelf, ((void*)0), ((void*)0), flags);
}
