
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; int iterable; } ;
typedef TYPE_1__ repeat_iterator_t ;
typedef scalar_t__ mp_obj_t ;


 int MP_OBJ_NEW_SMALL_INT (scalar_t__) ;
 int MP_OBJ_SENTINEL ;
 scalar_t__ mp_obj_get_int (int ) ;
 int mp_obj_len (int ) ;
 scalar_t__ mp_obj_subscr (int ,int ,int ) ;

__attribute__((used)) static mp_obj_t microbit_repeat_iter_next(mp_obj_t iter_in) {
    repeat_iterator_t *iter = (repeat_iterator_t *)iter_in;
    iter->index++;
    if (iter->index >= mp_obj_get_int(mp_obj_len(iter->iterable))) {
        iter->index = 0;
    }
    return mp_obj_subscr(iter->iterable, MP_OBJ_NEW_SMALL_INT(iter->index), MP_OBJ_SENTINEL);
}
