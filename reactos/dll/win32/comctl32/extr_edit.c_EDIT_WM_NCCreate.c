
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int style; int bEnableState; char password_char; int buffer_size; int undo_buffer_size; int line_count; struct TYPE_7__* logAttr; scalar_t__ hloc32W; struct TYPE_7__* undo_text; struct TYPE_7__* first_line_def; int hwndSelf; void* buffer_limit; int hwndParent; int hwndListBox; } ;
struct TYPE_6__ {int style; int dwExStyle; int hwndParent; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPCREATESTRUCTW ;
typedef int LONG_PTR ;
typedef int LINEDEF ;
typedef int HWND ;
typedef TYPE_2__ EDITSTATE ;


 void* BUFLIMIT_INITIAL ;
 int EDIT_InvalidateUniscribeData (TYPE_2__*) ;
 int ES_AUTOHSCROLL ;
 int ES_AUTOVSCROLL ;
 int ES_CENTER ;
 int ES_COMBO ;
 int ES_LOWERCASE ;
 int ES_MULTILINE ;
 int ES_NUMBER ;
 int ES_PASSWORD ;
 int ES_RIGHT ;
 int ES_UPPERCASE ;
 int FALSE ;
 int GWL_STYLE ;
 int GetDlgItem (int ,int ) ;
 int ID_CB_LISTBOX ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 scalar_t__ LocalAlloc (int,int ) ;
 int LocalFree (scalar_t__) ;
 int LocalSize (scalar_t__) ;
 int ROUND_TO_GROW (int) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WS_BORDER ;
 int WS_DISABLED ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_RIGHT ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;
 void* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static LRESULT EDIT_WM_NCCreate(HWND hwnd, LPCREATESTRUCTW lpcs)
{
 EDITSTATE *es;
 UINT alloc_size;

    TRACE("Creating edit control, style = %08x\n", lpcs->style);

    if (!(es = heap_alloc_zero(sizeof(*es))))
        return FALSE;
    SetWindowLongPtrW( hwnd, 0, (LONG_PTR)es );







    es->style = lpcs->style;

        es->bEnableState = !(es->style & WS_DISABLED);

 es->hwndSelf = hwnd;

 es->hwndParent = lpcs->hwndParent;

 if (es->style & ES_COMBO)
    es->hwndListBox = GetDlgItem(es->hwndParent, ID_CB_LISTBOX);


        if (lpcs->dwExStyle & WS_EX_RIGHT) es->style |= ES_RIGHT;





        if (es->style & ES_NUMBER) {
                ;
        } else if (es->style & ES_LOWERCASE) {
                es->style &= ~ES_UPPERCASE;
        }
 if (es->style & ES_MULTILINE) {
  es->buffer_limit = BUFLIMIT_INITIAL;
  if (es->style & WS_VSCROLL)
   es->style |= ES_AUTOVSCROLL;
  if (es->style & WS_HSCROLL)
   es->style |= ES_AUTOHSCROLL;
  es->style &= ~ES_PASSWORD;
  if ((es->style & ES_CENTER) || (es->style & ES_RIGHT)) {

   if (es->style & ES_RIGHT)
    es->style &= ~ES_CENTER;
   es->style &= ~WS_HSCROLL;
   es->style &= ~ES_AUTOHSCROLL;
  }
 } else {
  es->buffer_limit = BUFLIMIT_INITIAL;
  if ((es->style & ES_RIGHT) && (es->style & ES_CENTER))
   es->style &= ~ES_CENTER;
  es->style &= ~WS_HSCROLL;
  es->style &= ~WS_VSCROLL;
  if (es->style & ES_PASSWORD)
   es->password_char = '*';
 }

 alloc_size = ROUND_TO_GROW((es->buffer_size + 1) * sizeof(WCHAR));
 if(!(es->hloc32W = LocalAlloc(LMEM_MOVEABLE | LMEM_ZEROINIT, alloc_size)))
     goto cleanup;
 es->buffer_size = LocalSize(es->hloc32W)/sizeof(WCHAR) - 1;

 if (!(es->undo_text = heap_alloc_zero((es->buffer_size + 1) * sizeof(WCHAR))))
  goto cleanup;
 es->undo_buffer_size = es->buffer_size;

 if (es->style & ES_MULTILINE)
     if (!(es->first_line_def = heap_alloc_zero(sizeof(LINEDEF))))
         goto cleanup;
 es->line_count = 1;
 if (lpcs->dwExStyle & WS_EX_CLIENTEDGE)
  es->style &= ~WS_BORDER;
        else if (es->style & WS_BORDER)
  SetWindowLongW(hwnd, GWL_STYLE, es->style & ~WS_BORDER);

 return TRUE;

cleanup:
 SetWindowLongPtrW(es->hwndSelf, 0, 0);
 EDIT_InvalidateUniscribeData(es);
 heap_free(es->first_line_def);
 heap_free(es->undo_text);
 if (es->hloc32W) LocalFree(es->hloc32W);
 heap_free(es->logAttr);
 heap_free(es);
 return FALSE;
}
