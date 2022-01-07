
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;
typedef int microbit_image_obj_t ;


 scalar_t__ MP_OBJ_NEW_SMALL_INT (int ) ;
 int imageHeight (int *) ;

mp_obj_t microbit_image_height(mp_obj_t self_in) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)self_in;
    return MP_OBJ_NEW_SMALL_INT(imageHeight(self));
}
