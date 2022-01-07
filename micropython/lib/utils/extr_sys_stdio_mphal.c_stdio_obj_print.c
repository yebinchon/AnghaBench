
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ sys_stdio_obj_t ;
typedef int mp_print_t ;
typedef int mp_print_kind_t ;
typedef int mp_obj_t ;


 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int mp_printf (int const*,char*,int ) ;

void stdio_obj_print(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    sys_stdio_obj_t *self = MP_OBJ_TO_PTR(self_in);
    mp_printf(print, "<io.FileIO %d>", self->fd);
}
