
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ mp_map_elem_t ;
struct TYPE_5__ {int map; } ;


 int DEBUG_OP_printf (char*) ;
 int MP_MAP_LOOKUP ;
 int MP_OBJ_FROM_PTR (int *) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_QSTR___build_class__ ;
 TYPE_3__* MP_STATE_VM (int ) ;
 int mp_builtin___build_class___obj ;
 TYPE_1__* mp_map_lookup (int *,int ,int ) ;
 int mp_module_builtins_override_dict ;

mp_obj_t mp_load_build_class(void) {
    DEBUG_OP_printf("load_build_class\n");
    return MP_OBJ_FROM_PTR(&mp_builtin___build_class___obj);
}
