
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
typedef int mp_map_t ;
struct TYPE_6__ {int value; } ;
typedef TYPE_1__ mp_map_elem_t ;
struct TYPE_9__ {int map; } ;
struct TYPE_8__ {int map; } ;
struct TYPE_7__ {int map; } ;


 int DEBUG_OP_printf (char*,int ) ;
 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int MP_MAP_LOOKUP ;
 int MP_OBJ_NEW_QSTR (int ) ;
 TYPE_5__* MP_STATE_VM (int ) ;
 TYPE_4__* mp_globals_get () ;
 TYPE_1__* mp_map_lookup (int *,int ,int ) ;
 TYPE_2__ mp_module_builtins_globals ;
 int mp_module_builtins_override_dict ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_NameError ;
 int nlr_raise (int ) ;
 int qstr_str (int ) ;

mp_obj_t mp_load_global(qstr qst) {

    DEBUG_OP_printf("load global %s\n", qstr_str(qst));
    mp_map_elem_t *elem = mp_map_lookup(&mp_globals_get()->map, MP_OBJ_NEW_QSTR(qst), MP_MAP_LOOKUP);
    if (elem == ((void*)0)) {
        elem = mp_map_lookup((mp_map_t*)&mp_module_builtins_globals.map, MP_OBJ_NEW_QSTR(qst), MP_MAP_LOOKUP);
        if (elem == ((void*)0)) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                mp_raise_msg(&mp_type_NameError, "name not defined");
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_NameError,
                    "name '%q' isn't defined", qst));
            }
        }
    }
    return elem->value;
}
