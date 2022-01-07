
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_int_t ;
struct TYPE_3__ {int greyscale; } ;
typedef TYPE_1__ microbit_image_obj_t ;


 scalar_t__ MAX_BRIGHTNESS ;
 int check_mutability (TYPE_1__*) ;
 int greyscaleFill (int *,scalar_t__) ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_obj_get_int (scalar_t__) ;
 int mp_raise_ValueError (char*) ;

mp_obj_t microbit_image_fill(mp_obj_t self_in, mp_obj_t n_in) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)self_in;
    check_mutability(self);
    mp_int_t n = mp_obj_get_int(n_in);
    if (n < 0 || n > MAX_BRIGHTNESS) {
        mp_raise_ValueError("brightness out of bounds.");
    }
    greyscaleFill(&self->greyscale, n);
    return mp_const_none;
}
