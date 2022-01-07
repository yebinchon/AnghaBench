
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int pin; TYPE_1__* gpio; } ;
typedef TYPE_2__ pin_obj_t ;
struct TYPE_4__ {int PUPDR; } ;



uint32_t pin_get_pull(const pin_obj_t *pin) {
    return (pin->gpio->PUPDR >> (pin->pin * 2)) & 3;
}
