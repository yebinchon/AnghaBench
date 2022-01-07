
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ ERR_STATE ;


 TYPE_1__* err_get_state_int () ;
 int err_set_debug (TYPE_1__*,int ,char const*,int,char const*) ;

void ERR_set_debug(const char *file, int line, const char *func)
{
    ERR_STATE *es;

    es = err_get_state_int();
    if (es == ((void*)0))
        return;

    err_set_debug(es, es->top, file, line, func);
}
