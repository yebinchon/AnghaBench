
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int style; int hwndSelf; int selection_end; int selection_start; } ;
typedef int LRESULT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int const*,int,int ,int ) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,int ,int ) ;
 int EDIT_IsInsideDialog (TYPE_1__*) ;
 int EDIT_MoveBackward (TYPE_1__*,int ) ;
 int EDIT_MoveDown_ML (TYPE_1__*,int ) ;
 int EDIT_MoveHome (TYPE_1__*,int ,int ) ;
 int EDIT_WM_Clear (TYPE_1__*) ;
 int ES_MULTILINE ;
 int ES_NUMBER ;
 int ES_PASSWORD ;
 int ES_READONLY ;
 int ES_WANTRETURN ;
 int FALSE ;
 int GetKeyState (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

 int VK_CONTROL ;
 int WM_COPY ;
 int WM_CUT ;
 int WM_PASTE ;
 int WM_UNDO ;

__attribute__((used)) static LRESULT EDIT_WM_Char(EDITSTATE *es, WCHAR c)
{
        BOOL control;

 control = GetKeyState(VK_CONTROL) & 0x8000;

 switch (c) {
 case '\r':




            if ((es->style & ES_MULTILINE) && !(es->style & ES_WANTRETURN))
                if (EDIT_IsInsideDialog(es))
                    break;
 case '\n':
  if (es->style & ES_MULTILINE) {
   if (es->style & ES_READONLY) {
    EDIT_MoveHome(es, FALSE, FALSE);
    EDIT_MoveDown_ML(es, FALSE);
   } else {
    static const WCHAR cr_lfW[] = {'\r','\n'};
    EDIT_EM_ReplaceSel(es, TRUE, cr_lfW, 2, TRUE, TRUE);
   }
  }
  break;
 case '\t':
  if ((es->style & ES_MULTILINE) && !(es->style & ES_READONLY))
  {
   static const WCHAR tabW[] = {'\t'};
                        if (EDIT_IsInsideDialog(es))
                            break;
   EDIT_EM_ReplaceSel(es, TRUE, tabW, 1, TRUE, TRUE);
  }
  break;
 case 128:
  if (!(es->style & ES_READONLY) && !control) {
   if (es->selection_start != es->selection_end)
    EDIT_WM_Clear(es);
   else {

    EDIT_EM_SetSel(es, (UINT)-1, 0, FALSE);
    EDIT_MoveBackward(es, TRUE);
    EDIT_WM_Clear(es);
   }
  }
  break;
 case 0x03:
  if (!(es->style & ES_PASSWORD))
      SendMessageW(es->hwndSelf, WM_COPY, 0, 0);
  break;
 case 0x16:
         if (!(es->style & ES_READONLY))
      SendMessageW(es->hwndSelf, WM_PASTE, 0, 0);
  break;
 case 0x18:
         if (!((es->style & ES_READONLY) || (es->style & ES_PASSWORD)))
      SendMessageW(es->hwndSelf, WM_CUT, 0, 0);
  break;
 case 0x1A:
         if (!(es->style & ES_READONLY))
      SendMessageW(es->hwndSelf, WM_UNDO, 0, 0);
  break;

 default:

  if( (es->style & ES_NUMBER) && !( c >= '0' && c <= '9') )
   break;

  if (!(es->style & ES_READONLY) && (c >= ' ') && (c != 127))
   EDIT_EM_ReplaceSel(es, TRUE, &c, 1, TRUE, TRUE);
  break;
 }
    return 1;
}
