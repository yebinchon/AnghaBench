
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ ERR_STATE ;


 int err_clear_data (TYPE_1__*,int ,int) ;
 TYPE_1__* err_get_state_int () ;
 int err_set_data (TYPE_1__*,int ,char*,size_t,int) ;

__attribute__((used)) static int err_set_error_data_int(char *data, size_t size, int flags,
                                  int deallocate)
{
    ERR_STATE *es;

    es = err_get_state_int();
    if (es == ((void*)0))
        return 0;

    err_clear_data(es, es->top, deallocate);
    err_set_data(es, es->top, data, size, flags);

    return 1;
}
