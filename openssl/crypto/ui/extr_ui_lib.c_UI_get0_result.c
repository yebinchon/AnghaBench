
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strings; } ;
typedef TYPE_1__ UI ;


 int UI_F_UI_GET0_RESULT ;
 int UI_R_INDEX_TOO_LARGE ;
 int UI_R_INDEX_TOO_SMALL ;
 char const* UI_get0_result_string (int ) ;
 int UIerr (int ,int ) ;
 int sk_UI_STRING_num (int ) ;
 int sk_UI_STRING_value (int ,int) ;

const char *UI_get0_result(UI *ui, int i)
{
    if (i < 0) {
        UIerr(UI_F_UI_GET0_RESULT, UI_R_INDEX_TOO_SMALL);
        return ((void*)0);
    }
    if (i >= sk_UI_STRING_num(ui->strings)) {
        UIerr(UI_F_UI_GET0_RESULT, UI_R_INDEX_TOO_LARGE);
        return ((void*)0);
    }
    return UI_get0_result_string(sk_UI_STRING_value(ui->strings, i));
}
