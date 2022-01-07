
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_int_t ;
typedef int microbit_image_obj_t ;


 scalar_t__ MP_OBJ_NEW_SMALL_INT (int ) ;
 int imageGetPixelValue (int *,scalar_t__,scalar_t__) ;
 scalar_t__ imageHeight (int *) ;
 scalar_t__ imageWidth (int *) ;
 scalar_t__ mp_obj_get_int (scalar_t__) ;
 int mp_raise_ValueError (char*) ;

mp_obj_t microbit_image_get_pixel(mp_obj_t self_in, mp_obj_t x_in, mp_obj_t y_in) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)self_in;
    mp_int_t x = mp_obj_get_int(x_in);
    mp_int_t y = mp_obj_get_int(y_in);
    if (x < 0 || y < 0) {
        mp_raise_ValueError("index cannot be negative");
    }
    if (x < imageWidth(self) && y < imageHeight(self)) {
        return MP_OBJ_NEW_SMALL_INT(imageGetPixelValue(self, x, y));
    }
    mp_raise_ValueError("index too large");
}
