
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t servo_id; int max_usecs; int min_usecs; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef TYPE_1__* mp_obj_t ;


 int map_float_to_uint (float,float,float,int ,int ) ;
 float map_uint_to_float (int ,int ,int ,double,double) ;
 TYPE_1__* mp_const_none ;
 float mp_obj_get_float (TYPE_1__* const) ;
 TYPE_1__* mp_obj_new_float (float) ;
 int * servo_ticks ;
 int usToTicks (int ) ;

__attribute__((used)) static mp_obj_t servo_obj_angle(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    if (n_args == 1) {

        float angle = map_uint_to_float(servo_ticks[self->servo_id],
                                        usToTicks(self->min_usecs),
                                        usToTicks(self->max_usecs),
                                        0.0, 180.0);
        return mp_obj_new_float(angle);
    }

    float angle = mp_obj_get_float(args[1]);
    if (angle < 0.0F) {
        angle = 0.0F;
    }
    if (angle > 180.0F) {
        angle = 180.0F;
    }
    servo_ticks[self->servo_id] = map_float_to_uint(angle,
                                                    0.0F, 180.0F,
                                                    usToTicks(self->min_usecs),
                                                    usToTicks(self->max_usecs));
    return mp_const_none;
}
