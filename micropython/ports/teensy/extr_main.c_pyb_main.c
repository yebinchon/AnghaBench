
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int mp_const_none ;
 scalar_t__ mp_obj_is_str (int ) ;
 int pyb_config_main ;

mp_obj_t pyb_main(mp_obj_t main) {
    if (mp_obj_is_str(main)) {
        pyb_config_main = main;
    }
    return mp_const_none;
}
