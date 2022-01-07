
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
struct TYPE_5__ {int value; } ;
typedef TYPE_1__ mp_map_elem_t ;
struct TYPE_6__ {int map; } ;


 int DEBUG_OP_printf (char*,int ) ;
 int MP_MAP_LOOKUP ;
 int MP_OBJ_NEW_QSTR (int ) ;
 TYPE_3__* mp_globals_get () ;
 int mp_load_global (int ) ;
 TYPE_3__* mp_locals_get () ;
 TYPE_1__* mp_map_lookup (int *,int ,int ) ;
 int qstr_str (int ) ;

mp_obj_t mp_load_name(qstr qst) {

    DEBUG_OP_printf("load name %s\n", qstr_str(qst));

    if (mp_locals_get() != mp_globals_get()) {
        mp_map_elem_t *elem = mp_map_lookup(&mp_locals_get()->map, MP_OBJ_NEW_QSTR(qst), MP_MAP_LOOKUP);
        if (elem != ((void*)0)) {
            return elem->value;
        }
    }
    return mp_load_global(qst);
}
