
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * file; struct TYPE_4__* next; } ;
typedef TYPE_1__ ngx_log_t ;



ngx_log_t *
ngx_log_get_file_log(ngx_log_t *head)
{
    ngx_log_t *log;

    for (log = head; log; log = log->next) {
        if (log->file != ((void*)0)) {
            return log;
        }
    }

    return ((void*)0);
}
