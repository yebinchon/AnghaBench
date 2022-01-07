
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int microbit_display_clear () ;
 int mp_const_none ;

mp_obj_t microbit_display_clear_func(mp_obj_t self_in) {
    microbit_display_clear();
    return mp_const_none;
}
