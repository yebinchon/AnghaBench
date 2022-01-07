
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int number2 ;
typedef int number1 ;
struct TYPE_9__ {char* ok_chars; char* cancel_chars; } ;
struct TYPE_8__ {int result_minsize; int result_maxsize; } ;
struct TYPE_10__ {TYPE_2__ boolean_data; TYPE_1__ string_data; } ;
struct TYPE_11__ {int type; char* result_buf; int result_len; TYPE_3__ _; } ;
typedef TYPE_4__ UI_STRING ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_5__ UI ;


 int BIO_snprintf (char*,int,char*,int) ;
 int DECIMAL_SIZE (int) ;
 int ERR_add_error_data (int,char*,char*,char*,char*,char*) ;






 int UI_FLAG_REDOABLE ;
 int UI_F_UI_SET_RESULT_EX ;
 int UI_R_NO_RESULT_BUFFER ;
 int UI_R_RESULT_TOO_LARGE ;
 int UI_R_RESULT_TOO_SMALL ;
 int UIerr (int ,int ) ;
 int memcpy (char*,char const*,int) ;
 int strchr (char*,char const) ;

int UI_set_result_ex(UI *ui, UI_STRING *uis, const char *result, int len)
{
    ui->flags &= ~UI_FLAG_REDOABLE;

    switch (uis->type) {
    case 129:
    case 128:
        {
            char number1[DECIMAL_SIZE(uis->_.string_data.result_minsize) + 1];
            char number2[DECIMAL_SIZE(uis->_.string_data.result_maxsize) + 1];

            BIO_snprintf(number1, sizeof(number1), "%d",
                         uis->_.string_data.result_minsize);
            BIO_snprintf(number2, sizeof(number2), "%d",
                         uis->_.string_data.result_maxsize);

            if (len < uis->_.string_data.result_minsize) {
                ui->flags |= UI_FLAG_REDOABLE;
                UIerr(UI_F_UI_SET_RESULT_EX, UI_R_RESULT_TOO_SMALL);
                ERR_add_error_data(5, "You must type in ",
                                   number1, " to ", number2, " characters");
                return -1;
            }
            if (len > uis->_.string_data.result_maxsize) {
                ui->flags |= UI_FLAG_REDOABLE;
                UIerr(UI_F_UI_SET_RESULT_EX, UI_R_RESULT_TOO_LARGE);
                ERR_add_error_data(5, "You must type in ",
                                   number1, " to ", number2, " characters");
                return -1;
            }
        }

        if (uis->result_buf == ((void*)0)) {
            UIerr(UI_F_UI_SET_RESULT_EX, UI_R_NO_RESULT_BUFFER);
            return -1;
        }

        memcpy(uis->result_buf, result, len);
        if (len <= uis->_.string_data.result_maxsize)
            uis->result_buf[len] = '\0';
        uis->result_len = len;
        break;
    case 133:
        {
            const char *p;

            if (uis->result_buf == ((void*)0)) {
                UIerr(UI_F_UI_SET_RESULT_EX, UI_R_NO_RESULT_BUFFER);
                return -1;
            }

            uis->result_buf[0] = '\0';
            for (p = result; *p; p++) {
                if (strchr(uis->_.boolean_data.ok_chars, *p)) {
                    uis->result_buf[0] = uis->_.boolean_data.ok_chars[0];
                    break;
                }
                if (strchr(uis->_.boolean_data.cancel_chars, *p)) {
                    uis->result_buf[0] = uis->_.boolean_data.cancel_chars[0];
                    break;
                }
            }
        }
    case 130:
    case 131:
    case 132:
        break;
    }
    return 0;
}
