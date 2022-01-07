
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;
typedef int mp_int_t ;
typedef int microbit_image_obj_t ;


 scalar_t__ image_shift (int *,int ,int ) ;
 int mp_obj_get_int (scalar_t__) ;

mp_obj_t microbit_image_shift_down(mp_obj_t self_in, mp_obj_t n_in) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)self_in;
    mp_int_t n = mp_obj_get_int(n_in);
    return image_shift(self, 0, -n);
}
