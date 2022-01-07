
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint ;
struct TYPE_8__ {size_t servo_id; scalar_t__ min_usecs; scalar_t__ max_usecs; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef TYPE_1__* mp_obj_t ;


 TYPE_1__* MP_OBJ_NEW_SMALL_INT (int ) ;
 int clamp (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* mp_const_none ;
 int mp_obj_get_int (TYPE_1__* const) ;
 int * servo_ticks ;
 int ticksToUs (int ) ;
 int usToTicks (int ) ;

__attribute__((used)) static mp_obj_t servo_obj_usecs(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    uint usecs;
    if (n_args == 1) {

        return MP_OBJ_NEW_SMALL_INT(ticksToUs(servo_ticks[self->servo_id]));
    }

    usecs = mp_obj_get_int(args[1]);

    if (self->min_usecs < self->max_usecs) {
        usecs = clamp(usecs, self->min_usecs, self->max_usecs);
    } else {
        usecs = clamp(usecs, self->max_usecs, self->min_usecs);
    }
    servo_ticks[self->servo_id] = usToTicks(usecs);
    return mp_const_none;
}
