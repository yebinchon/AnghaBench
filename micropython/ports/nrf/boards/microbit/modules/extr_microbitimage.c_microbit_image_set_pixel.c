
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mp_uint_t ;
typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_int_t ;
struct TYPE_5__ {int greyscale; } ;
typedef TYPE_1__ microbit_image_obj_t ;


 scalar_t__ MAX_BRIGHTNESS ;
 int check_mutability (TYPE_1__*) ;
 int greyscaleSetPixelValue (int *,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ imageHeight (TYPE_1__*) ;
 scalar_t__ imageWidth (TYPE_1__*) ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_obj_get_int (scalar_t__ const) ;
 int mp_raise_ValueError (char*) ;

mp_obj_t microbit_image_set_pixel(mp_uint_t n_args, const mp_obj_t *args) {
    (void)n_args;
    microbit_image_obj_t *self = (microbit_image_obj_t*)args[0];
    check_mutability(self);
    mp_int_t x = mp_obj_get_int(args[1]);
    mp_int_t y = mp_obj_get_int(args[2]);
    if (x < 0 || y < 0) {
        mp_raise_ValueError("index cannot be negative");
    }
    mp_int_t bright = mp_obj_get_int(args[3]);
    if (bright < 0 || bright > MAX_BRIGHTNESS)
        mp_raise_ValueError("brightness out of bounds.");
    if (x < imageWidth(self) && y < imageHeight(self)) {
        greyscaleSetPixelValue(&(self->greyscale), x, y, bright);
        return mp_const_none;
    }
    mp_raise_ValueError("index too large");
}
