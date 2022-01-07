
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {int * traceback_data; } ;


 int GET_NATIVE_EXCEPTION (TYPE_1__*,int ) ;
 TYPE_1__* self ;

void mp_obj_exception_clear_traceback(mp_obj_t self_in) {
    GET_NATIVE_EXCEPTION(self, self_in);


    self->traceback_data = ((void*)0);
}
