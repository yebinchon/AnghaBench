
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bottom; int top; int* err_flags; unsigned long* err_buffer; char** err_file; int* err_line; char** err_func; int* err_data_flags; char** err_data; } ;
typedef TYPE_1__ ERR_STATE ;
typedef scalar_t__ ERR_GET_ACTION ;


 int ERR_FLAG_CLEAR ;
 int ERR_NUM_ERRORS ;
 scalar_t__ EV_PEEK_LAST ;
 scalar_t__ EV_POP ;
 int err_clear (TYPE_1__*,int,int ) ;
 int err_clear_data (TYPE_1__*,int,int ) ;
 TYPE_1__* err_get_state_int () ;

__attribute__((used)) static unsigned long get_error_values(ERR_GET_ACTION g,
                                      const char **file, int *line,
                                      const char **func,
                                      const char **data, int *flags)
{
    int i = 0;
    ERR_STATE *es;
    unsigned long ret;

    es = err_get_state_int();
    if (es == ((void*)0))
        return 0;





    while (es->bottom != es->top) {
        if (es->err_flags[es->top] & ERR_FLAG_CLEAR) {
            err_clear(es, es->top, 0);
            es->top = es->top > 0 ? es->top - 1 : ERR_NUM_ERRORS - 1;
            continue;
        }
        i = (es->bottom + 1) % ERR_NUM_ERRORS;
        if (es->err_flags[i] & ERR_FLAG_CLEAR) {
            es->bottom = i;
            err_clear(es, es->bottom, 0);
            continue;
        }
        break;
    }


    if (es->bottom == es->top)
        return 0;


    if (g == EV_PEEK_LAST)
        i = es->top;
    else
        i = (es->bottom + 1) % ERR_NUM_ERRORS;

    ret = es->err_buffer[i];
    if (g == EV_POP) {
        es->bottom = i;
        es->err_buffer[i] = 0;
    }

    if (file != ((void*)0)) {
        *file = es->err_file[i];
        if (*file == ((void*)0))
            *file = "";
    }
    if (line != ((void*)0))
        *line = es->err_line[i];
    if (func != ((void*)0)) {
        *func = es->err_func[i];
        if (*func == ((void*)0))
            *func = "";
    }
    if (flags != ((void*)0))
        *flags = es->err_data_flags[i];
    if (data == ((void*)0)) {
        if (g == EV_POP) {
            err_clear_data(es, i, 0);
        }
    } else {
        *data = es->err_data[i];
        if (*data == ((void*)0)) {
            *data = "";
            if (flags != ((void*)0))
                *flags = 0;
        }
    }
    return ret;
}
