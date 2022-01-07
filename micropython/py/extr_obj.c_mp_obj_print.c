
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_print_kind_t ;
typedef int mp_obj_t ;


 int MP_PYTHON_PRINTER ;
 int mp_obj_print_helper (int ,int ,int ) ;

void mp_obj_print(mp_obj_t o_in, mp_print_kind_t kind) {
    mp_obj_print_helper(MP_PYTHON_PRINTER, o_in, kind);
}
