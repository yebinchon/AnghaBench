
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* mp_obj_t ;
typedef int mp_obj_iter_buf_t ;
struct TYPE_4__ {int * type; } ;
struct TYPE_5__ {void** args; TYPE_1__ base; } ;
typedef TYPE_2__ mp_obj_getitem_iter_t ;


 void* MP_OBJ_FROM_PTR (TYPE_2__*) ;
 void* MP_OBJ_NEW_SMALL_INT (int ) ;
 int assert (int) ;
 int it_type ;

mp_obj_t mp_obj_new_getitem_iter(mp_obj_t *args, mp_obj_iter_buf_t *iter_buf) {
    assert(sizeof(mp_obj_getitem_iter_t) <= sizeof(mp_obj_iter_buf_t));
    mp_obj_getitem_iter_t *o = (mp_obj_getitem_iter_t*)iter_buf;
    o->base.type = &it_type;
    o->args[0] = args[0];
    o->args[1] = args[1];
    o->args[2] = MP_OBJ_NEW_SMALL_INT(0);
    return MP_OBJ_FROM_PTR(o);
}
