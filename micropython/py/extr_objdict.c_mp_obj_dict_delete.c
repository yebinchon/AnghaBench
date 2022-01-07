
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int MP_MAP_LOOKUP_REMOVE_IF_FOUND ;
 int dict_get_helper (int,int *,int ) ;

mp_obj_t mp_obj_dict_delete(mp_obj_t self_in, mp_obj_t key) {
    mp_obj_t args[2] = {self_in, key};
    dict_get_helper(2, args, MP_MAP_LOOKUP_REMOVE_IF_FOUND);
    return self_in;
}
