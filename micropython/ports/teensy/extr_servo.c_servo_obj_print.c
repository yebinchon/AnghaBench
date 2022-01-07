
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int servo_id; } ;
typedef TYPE_1__ pyb_servo_obj_t ;
typedef int mp_print_kind_t ;
typedef TYPE_1__* mp_obj_t ;



__attribute__((used)) static void servo_obj_print(void (*print)(void *env, const char *fmt, ...), void *env, mp_obj_t self_in, mp_print_kind_t kind) {
    pyb_servo_obj_t *self = self_in;
    (void)kind;
    print(env, "<Servo %lu>", self->servo_id);
}
