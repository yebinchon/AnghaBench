
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
struct TYPE_6__ {size_t alloc; TYPE_1__* table; } ;
typedef TYPE_2__ mp_map_t ;
struct TYPE_7__ {TYPE_2__ map; } ;
struct TYPE_5__ {int value; int key; } ;


 int DEBUG_printf (char*,int ) ;
 scalar_t__ mp_map_slot_is_filled (TYPE_2__*,size_t) ;
 TYPE_3__* mp_obj_module_get_globals (int ) ;
 int mp_obj_str_get_qstr (int ) ;
 char* mp_obj_str_get_str (int ) ;
 int mp_store_name (int ,int ) ;

void mp_import_all(mp_obj_t module) {
    DEBUG_printf("import all %p\n", module);


    mp_map_t *map = &mp_obj_module_get_globals(module)->map;
    for (size_t i = 0; i < map->alloc; i++) {
        if (mp_map_slot_is_filled(map, i)) {



            const char *name = mp_obj_str_get_str(map->table[i].key);
            if (*name != '_') {
                qstr qname = mp_obj_str_get_qstr(map->table[i].key);
                mp_store_name(qname, map->table[i].value);
            }
        }
    }
}
