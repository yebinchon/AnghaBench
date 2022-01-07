
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int min_usecs; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef TYPE_1__* mp_obj_t ;


 TYPE_1__* MP_OBJ_NEW_SMALL_INT (int ) ;
 TYPE_1__* mp_const_none ;
 int mp_obj_get_int (TYPE_1__* const) ;

__attribute__((used)) static mp_obj_t servo_obj_min_usecs(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    if (n_args == 1) {

        return MP_OBJ_NEW_SMALL_INT(self->min_usecs);
    }

    self->min_usecs = mp_obj_get_int(args[1]);
    return mp_const_none;
}
