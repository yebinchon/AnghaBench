
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_uint_t ;
typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_int_t ;
struct TYPE_4__ {int greyscale; } ;
typedef TYPE_1__ microbit_image_obj_t ;


 int check_mutability (TYPE_1__*) ;
 int image_blit (TYPE_1__*,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int microbit_image_type ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_obj_get_int (scalar_t__ const) ;
 int * mp_obj_get_type (scalar_t__) ;
 int mp_raise_ValueError (char*) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_TypeError ;

mp_obj_t microbit_image_blit(mp_uint_t n_args, const mp_obj_t *args) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)args[0];
    check_mutability(self);

    mp_obj_t src = args[1];
    if (mp_obj_get_type(src) != &microbit_image_type) {
        mp_raise_msg(&mp_type_TypeError, "expecting an image");
    }
    if (n_args == 7) {
        mp_raise_msg(&mp_type_TypeError, "must specify both offsets");
    }
    mp_int_t x = mp_obj_get_int(args[2]);
    mp_int_t y = mp_obj_get_int(args[3]);
    mp_int_t w = mp_obj_get_int(args[4]);
    mp_int_t h = mp_obj_get_int(args[5]);
    if (w < 0 || h < 0) {
        mp_raise_ValueError("size cannot be negative");
    }
    mp_int_t xdest;
    mp_int_t ydest;
    if (n_args == 6) {
        xdest = 0;
        ydest = 0;
    } else {
        xdest = mp_obj_get_int(args[6]);
        ydest = mp_obj_get_int(args[7]);
    }
    image_blit((microbit_image_obj_t *)src, &(self->greyscale), x, y, w, h, xdest, ydest);
    return mp_const_none;
}
