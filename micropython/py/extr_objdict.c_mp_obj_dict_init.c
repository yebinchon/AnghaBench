
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * type; } ;
struct TYPE_5__ {int map; TYPE_1__ base; } ;
typedef TYPE_2__ mp_obj_dict_t ;


 int mp_map_init (int *,size_t) ;
 int mp_type_dict ;

void mp_obj_dict_init(mp_obj_dict_t *dict, size_t n_args) {
    dict->base.type = &mp_type_dict;
    mp_map_init(&dict->map, n_args);
}
