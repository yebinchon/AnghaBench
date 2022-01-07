
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int mp_int_t ;


 int mp_obj_new_exception_msg_varg (int *,char*,int) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

mp_uint_t get_prescaler_shift(mp_int_t prescaler) {
    mp_uint_t prescaler_shift;
    for (prescaler_shift = 0; prescaler_shift < 8; prescaler_shift++) {
        if (prescaler == (1 << prescaler_shift)) {
            return prescaler_shift;
        }
    }
    nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError, "prescaler must be a power of 2 between 1 and 128, not %d", prescaler));
}
