
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_5__ {int style; scalar_t__ password_char; int hwndSelf; } ;
typedef int LONG ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int EDIT_UpdateText (TYPE_1__*,int *,int ) ;
 int ES_MULTILINE ;
 int ES_PASSWORD ;
 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int TRUE ;

__attribute__((used)) static void EDIT_EM_SetPasswordChar(EDITSTATE *es, WCHAR c)
{
 LONG style;

 if (es->style & ES_MULTILINE)
  return;

 if (es->password_char == c)
  return;

        style = GetWindowLongW( es->hwndSelf, GWL_STYLE );
 es->password_char = c;
 if (c) {
            SetWindowLongW( es->hwndSelf, GWL_STYLE, style | ES_PASSWORD );
            es->style |= ES_PASSWORD;
 } else {
            SetWindowLongW( es->hwndSelf, GWL_STYLE, style & ~ES_PASSWORD );
            es->style &= ~ES_PASSWORD;
 }
 EDIT_InvalidateUniscribeData(es);
 EDIT_UpdateText(es, ((void*)0), TRUE);
}
