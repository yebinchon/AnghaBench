
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mp_uint_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_4__ {scalar_t__ parent; } ;
typedef TYPE_1__ mp_irq_obj_t ;
struct TYPE_5__ {size_t len; scalar_t__* items; } ;


 TYPE_3__ MP_STATE_PORT (int ) ;
 int mp_irq_obj_list ;

mp_irq_obj_t *mp_irq_find (mp_obj_t parent) {
    for (mp_uint_t i = 0; i < MP_STATE_PORT(mp_irq_obj_list).len; i++) {
        mp_irq_obj_t *callback_obj = ((mp_irq_obj_t *)(MP_STATE_PORT(mp_irq_obj_list).items[i]));
        if (callback_obj->parent == parent) {
            return callback_obj;
        }
    }
    return ((void*)0);
}
