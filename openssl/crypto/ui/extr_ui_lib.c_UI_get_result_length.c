
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strings; } ;
typedef TYPE_1__ UI ;


 int UI_F_UI_GET_RESULT_LENGTH ;
 int UI_R_INDEX_TOO_LARGE ;
 int UI_R_INDEX_TOO_SMALL ;
 int UI_get_result_string_length (int ) ;
 int UIerr (int ,int ) ;
 int sk_UI_STRING_num (int ) ;
 int sk_UI_STRING_value (int ,int) ;

int UI_get_result_length(UI *ui, int i)
{
    if (i < 0) {
        UIerr(UI_F_UI_GET_RESULT_LENGTH, UI_R_INDEX_TOO_SMALL);
        return -1;
    }
    if (i >= sk_UI_STRING_num(ui->strings)) {
        UIerr(UI_F_UI_GET_RESULT_LENGTH, UI_R_INDEX_TOO_LARGE);
        return -1;
    }
    return UI_get_result_string_length(sk_UI_STRING_value(ui->strings, i));
}
