
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_12__ {TYPE_2__* locals_dict; int (* attr ) (int ,int ,int *) ;int * iternext; } ;
typedef TYPE_3__ mp_obj_type_t ;
typedef int mp_obj_t ;
typedef int mp_map_t ;
struct TYPE_13__ {int value; } ;
typedef TYPE_4__ mp_map_elem_t ;
struct TYPE_10__ {int * type; } ;
struct TYPE_11__ {int map; TYPE_1__ base; } ;


 int MP_MAP_LOOKUP ;
 int MP_OBJ_FROM_PTR (TYPE_3__*) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_OBJ_NULL ;
 int MP_QSTR___class__ ;
 int MP_QSTR___next__ ;
 int assert (int) ;
 TYPE_3__ mp_builtin_next_obj ;
 int mp_convert_member_lookup (int ,TYPE_3__*,int ,int *) ;
 TYPE_4__* mp_map_lookup (int *,int ,int ) ;
 TYPE_3__* mp_obj_get_type (int ) ;
 int mp_type_dict ;
 int stub1 (int ,int ,int *) ;

void mp_load_method_maybe(mp_obj_t obj, qstr attr, mp_obj_t *dest) {

    dest[0] = MP_OBJ_NULL;
    dest[1] = MP_OBJ_NULL;


    mp_obj_type_t *type = mp_obj_get_type(obj);
    if (attr == MP_QSTR___next__ && type->iternext != ((void*)0)) {
        dest[0] = MP_OBJ_FROM_PTR(&mp_builtin_next_obj);
        dest[1] = obj;

    } else if (type->attr != ((void*)0)) {

        type->attr(obj, attr, dest);

    } else if (type->locals_dict != ((void*)0)) {


        assert(type->locals_dict->base.type == &mp_type_dict);
        mp_map_t *locals_map = &type->locals_dict->map;
        mp_map_elem_t *elem = mp_map_lookup(locals_map, MP_OBJ_NEW_QSTR(attr), MP_MAP_LOOKUP);
        if (elem != ((void*)0)) {
            mp_convert_member_lookup(obj, type, elem->value, dest);
        }
    }
}
