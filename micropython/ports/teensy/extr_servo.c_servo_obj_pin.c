
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t servo_id; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef TYPE_1__* mp_obj_t ;


 TYPE_1__* MP_OBJ_NEW_SMALL_INT (int ) ;
 int * servo_pin ;

__attribute__((used)) static mp_obj_t servo_obj_pin(mp_obj_t self_in) {
    pyb_servo_obj_t *self = self_in;
    return MP_OBJ_NEW_SMALL_INT(servo_pin[self->servo_id]);
}
