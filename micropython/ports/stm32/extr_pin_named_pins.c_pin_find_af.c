
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ num_af; TYPE_2__* af; } ;
typedef TYPE_1__ pin_obj_t ;
struct TYPE_6__ {scalar_t__ fn; scalar_t__ unit; } ;
typedef TYPE_2__ pin_af_obj_t ;
typedef scalar_t__ mp_uint_t ;



const pin_af_obj_t *pin_find_af(const pin_obj_t *pin, uint8_t fn, uint8_t unit) {
    const pin_af_obj_t *af = pin->af;
    for (mp_uint_t i = 0; i < pin->num_af; i++, af++) {
        if (af->fn == fn && af->unit == unit) {
            return af;
        }
    }
    return ((void*)0);
}
