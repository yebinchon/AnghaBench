
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int style; int flags; int selection_start; int selection_end; } ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EDIT_CharFromPos (TYPE_1__*,int,int ,scalar_t__*) ;
 int EDIT_EM_PosFromChar (TYPE_1__*,int ,int) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,int ,scalar_t__) ;
 int EF_AFTER_WRAP ;
 int ES_MULTILINE ;
 scalar_t__ FALSE ;
 int HIWORD (int ) ;
 int get_text_length (TYPE_1__*) ;

__attribute__((used)) static void EDIT_MoveEnd(EDITSTATE *es, BOOL extend, BOOL ctrl)
{
 BOOL after_wrap = FALSE;
 INT e;


 if (!ctrl && (es->style & ES_MULTILINE))
  e = EDIT_CharFromPos(es, 0x3fffffff,
   HIWORD(EDIT_EM_PosFromChar(es, es->selection_end, es->flags & EF_AFTER_WRAP)), &after_wrap);
 else
  e = get_text_length(es);
 EDIT_EM_SetSel(es, extend ? es->selection_start : e, e, after_wrap);
 EDIT_EM_ScrollCaret(es);
}
