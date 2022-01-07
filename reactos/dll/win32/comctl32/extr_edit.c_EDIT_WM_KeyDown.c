
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_22__ {int style; int hwndParent; int selection_end; int selection_start; } ;
typedef int LRESULT ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_1__ EDITSTATE ;
typedef int DWORD ;
typedef int BOOL ;


 int DC_HASDEFID ;
 int DM_GETDEFID ;
 int EDIT_CheckCombo (TYPE_1__*,int ,int) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,int ,int) ;
 int EDIT_IsInsideDialog (TYPE_1__*) ;
 int EDIT_MoveBackward (TYPE_1__*,int) ;
 int EDIT_MoveDown_ML (TYPE_1__*,int) ;
 int EDIT_MoveEnd (TYPE_1__*,int,int) ;
 int EDIT_MoveForward (TYPE_1__*,int) ;
 int EDIT_MoveHome (TYPE_1__*,int,int) ;
 int EDIT_MovePageDown_ML (TYPE_1__*,int) ;
 int EDIT_MovePageUp_ML (TYPE_1__*,int) ;
 int EDIT_MoveUp_ML (TYPE_1__*,int) ;
 int EDIT_MoveWordBackward (TYPE_1__*,int) ;
 int EDIT_MoveWordForward (TYPE_1__*,int) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_WM_Clear (TYPE_1__*) ;
 int EDIT_WM_Copy (TYPE_1__*) ;
 int EDIT_WM_Cut (TYPE_1__*) ;
 int EDIT_WM_Paste (TYPE_1__*) ;
 int EN_CHANGE ;
 int EN_UPDATE ;
 int ES_MULTILINE ;
 int ES_READONLY ;
 int ES_WANTRETURN ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetKeyState (int ) ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int PostMessageW (int ,int ,int const,int ) ;
 int SendMessageW (int ,int ,int,int) ;
 int TRUE ;
 int VK_CONTROL ;
 int VK_MENU ;




 int VK_SHIFT ;


 int WM_CLOSE ;
 int WM_KEYDOWN ;
 int WM_NEXTDLGCTL ;
 int get_text_length (TYPE_1__*) ;

__attribute__((used)) static LRESULT EDIT_WM_KeyDown(EDITSTATE *es, INT key)
{
 BOOL shift;
 BOOL control;

 if (GetKeyState(VK_MENU) & 0x8000)
  return 0;

 shift = GetKeyState(VK_SHIFT) & 0x8000;
 control = GetKeyState(VK_CONTROL) & 0x8000;

 switch (key) {
 case 137:
 case 128:
  if (EDIT_CheckCombo(es, WM_KEYDOWN, key) || key == 137)
   break;


 case 134:
  if ((es->style & ES_MULTILINE) && (key == 128))
   EDIT_MoveUp_ML(es, shift);
  else
   if (control)
    EDIT_MoveWordBackward(es, shift);
   else
    EDIT_MoveBackward(es, shift);
  break;
 case 140:
  if (EDIT_CheckCombo(es, WM_KEYDOWN, key))
   break;

 case 130:
  if ((es->style & ES_MULTILINE) && (key == 140))
   EDIT_MoveDown_ML(es, shift);
  else if (control)
   EDIT_MoveWordForward(es, shift);
  else
   EDIT_MoveForward(es, shift);
  break;
 case 136:
  EDIT_MoveHome(es, shift, control);
  break;
 case 139:
  EDIT_MoveEnd(es, shift, control);
  break;
 case 132:
  if (es->style & ES_MULTILINE)
   EDIT_MovePageUp_ML(es, shift);
  else
   EDIT_CheckCombo(es, WM_KEYDOWN, key);
  break;
 case 133:
  if (es->style & ES_MULTILINE)
   EDIT_MovePageDown_ML(es, shift);
  else
   EDIT_CheckCombo(es, WM_KEYDOWN, key);
  break;
 case 141:
  if (!(es->style & ES_READONLY) && !(shift && control)) {
   if (es->selection_start != es->selection_end) {
    if (shift)
     EDIT_WM_Cut(es);
    else
     EDIT_WM_Clear(es);
   } else {
    if (shift) {

     EDIT_EM_SetSel(es, (UINT)-1, 0, FALSE);
     EDIT_MoveBackward(es, TRUE);
     EDIT_WM_Clear(es);
    } else if (control) {

     EDIT_EM_SetSel(es, (UINT)-1, 0, FALSE);
     EDIT_MoveEnd(es, TRUE, FALSE);
     EDIT_WM_Clear(es);
    } else {

     EDIT_EM_SetSel(es, (UINT)-1, 0, FALSE);
     EDIT_MoveForward(es, TRUE);
     EDIT_WM_Clear(es);
    }
   }
  }
  break;
 case 135:
  if (shift) {
   if (!(es->style & ES_READONLY))
    EDIT_WM_Paste(es);
  } else if (control)
   EDIT_WM_Copy(es);
  break;
 case 131:

     if(!(es->style & ES_MULTILINE) || !(es->style & ES_WANTRETURN))
     {
                DWORD dw;

                if (!EDIT_IsInsideDialog(es)) break;
                if (control) break;
                dw = SendMessageW(es->hwndParent, DM_GETDEFID, 0, 0);
                if (HIWORD(dw) == DC_HASDEFID)
                {
                    HWND hwDefCtrl = GetDlgItem(es->hwndParent, LOWORD(dw));
                    if (hwDefCtrl)
                    {
                        SendMessageW(es->hwndParent, WM_NEXTDLGCTL, (WPARAM)hwDefCtrl, TRUE);
                        PostMessageW(hwDefCtrl, WM_KEYDOWN, 131, 0);
                    }
                }
     }
     break;
        case 138:
            if ((es->style & ES_MULTILINE) && EDIT_IsInsideDialog(es))
                PostMessageW(es->hwndParent, WM_CLOSE, 0, 0);
            break;
        case 129:
            if ((es->style & ES_MULTILINE) && EDIT_IsInsideDialog(es))
                SendMessageW(es->hwndParent, WM_NEXTDLGCTL, shift, 0);
            break;
        case 'A':
            if (control)
            {
                if (EDIT_EM_SetSel(es, 0, get_text_length(es), FALSE))
                {
                    EDIT_NOTIFY_PARENT(es, EN_UPDATE);
                    EDIT_NOTIFY_PARENT(es, EN_CHANGE);
                }
            }
            break;
 }
        return TRUE;
}
