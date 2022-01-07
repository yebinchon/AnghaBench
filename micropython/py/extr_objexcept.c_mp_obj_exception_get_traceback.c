
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {size_t* traceback_data; size_t traceback_len; } ;


 int GET_NATIVE_EXCEPTION (TYPE_1__*,int ) ;
 TYPE_1__* self ;

void mp_obj_exception_get_traceback(mp_obj_t self_in, size_t *n, size_t **values) {
    GET_NATIVE_EXCEPTION(self, self_in);

    if (self->traceback_data == ((void*)0)) {
        *n = 0;
        *values = ((void*)0);
    } else {
        *n = self->traceback_len;
        *values = self->traceback_data;
    }
}
