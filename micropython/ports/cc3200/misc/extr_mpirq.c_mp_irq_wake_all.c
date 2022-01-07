
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mp_uint_t ;
struct TYPE_5__ {int parent; TYPE_1__* methods; scalar_t__ isenabled; } ;
typedef TYPE_2__ mp_irq_obj_t ;
struct TYPE_6__ {size_t len; scalar_t__* items; } ;
struct TYPE_4__ {int (* enable ) (int ) ;} ;


 TYPE_3__ MP_STATE_PORT (int ) ;
 int mp_irq_obj_list ;
 int stub1 (int ) ;

void mp_irq_wake_all (void) {

    for (mp_uint_t i = 0; i < MP_STATE_PORT(mp_irq_obj_list).len; i++) {
        mp_irq_obj_t *callback_obj = ((mp_irq_obj_t *)(MP_STATE_PORT(mp_irq_obj_list).items[i]));
        if (callback_obj->isenabled) {
            callback_obj->methods->enable(callback_obj->parent);
        }
    }
}
