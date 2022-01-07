
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_4__ {int * ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_obj_t ;
struct TYPE_5__ {int * type; } ;
typedef TYPE_2__ mp_obj_base_t ;


 int MP_OBJ_FROM_PTR (int *) ;
 int mp_load_method_maybe (int ,int ,int *) ;
 int mp_obj_is_subclass_fast (int ,int ) ;
 int mp_type_AttributeError ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;
 int nlr_raise (int ) ;

void mp_load_method_protected(mp_obj_t obj, qstr attr, mp_obj_t *dest, bool catch_all_exc) {
    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        mp_load_method_maybe(obj, attr, dest);
        nlr_pop();
    } else {
        if (!catch_all_exc
            && !mp_obj_is_subclass_fast(MP_OBJ_FROM_PTR(((mp_obj_base_t*)nlr.ret_val)->type),
                MP_OBJ_FROM_PTR(&mp_type_AttributeError))) {

            nlr_raise(MP_OBJ_FROM_PTR(nlr.ret_val));
        }
    }
}
