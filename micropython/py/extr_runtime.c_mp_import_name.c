
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
struct TYPE_5__ {int map; } ;
typedef TYPE_1__ mp_obj_dict_t ;
struct TYPE_6__ {int value; } ;
typedef TYPE_2__ mp_map_elem_t ;


 int DEBUG_printf (char*,int ,int ) ;
 int MP_MAP_LOOKUP ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_OBJ_SMALL_INT_VALUE (int ) ;
 int MP_QSTR___import__ ;
 TYPE_1__* MP_STATE_VM (int ) ;
 int mp_builtin___import__ (int,int *) ;
 int mp_call_function_n_kw (int ,int,int ,int *) ;
 int mp_const_none ;
 TYPE_2__* mp_map_lookup (int *,int ,int ) ;
 int mp_module_builtins_override_dict ;
 int qstr_str (int ) ;

mp_obj_t mp_import_name(qstr name, mp_obj_t fromlist, mp_obj_t level) {
    DEBUG_printf("import name '%s' level=%d\n", qstr_str(name), MP_OBJ_SMALL_INT_VALUE(level));


    mp_obj_t args[5];
    args[0] = MP_OBJ_NEW_QSTR(name);
    args[1] = mp_const_none;
    args[2] = mp_const_none;
    args[3] = fromlist;
    args[4] = level;
    return mp_builtin___import__(5, args);
}
