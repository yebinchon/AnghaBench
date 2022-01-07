
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pin; int * gpio; } ;
typedef TYPE_1__ pin_obj_t ;


 int* GPIO_PIN_TO_PORT_PCR (int *,int ) ;
 int volatile PORT_PCR_MUX_MASK ;

uint32_t pin_get_af(const pin_obj_t *pin) {
    if (pin->gpio == ((void*)0)) {

        return 0;
    }
    volatile uint32_t *port_pcr = GPIO_PIN_TO_PORT_PCR(pin->gpio, pin->pin);
    return (*port_pcr & PORT_PCR_MUX_MASK) >> 8;
}
