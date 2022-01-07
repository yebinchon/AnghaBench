
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mp_const_obj_t ;
struct TYPE_2__ {int name; } ;


 TYPE_1__* mp_obj_get_type (int ) ;
 char const* qstr_str (int ) ;

const char *mp_obj_get_type_str(mp_const_obj_t o_in) {
    return qstr_str(mp_obj_get_type(o_in)->name);
}
