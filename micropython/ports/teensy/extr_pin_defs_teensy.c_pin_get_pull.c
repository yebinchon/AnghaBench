
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pin; int * gpio; } ;
typedef TYPE_1__ pin_obj_t ;


 int GPIO_NOPULL ;
 int* GPIO_PIN_TO_PORT_PCR (int *,int ) ;
 int GPIO_PULLDOWN ;
 int GPIO_PULLUP ;
 int PORT_PCR_MUX_MASK ;
 int PORT_PCR_PE ;
 int PORT_PCR_PS ;

uint32_t pin_get_pull(const pin_obj_t *pin) {
    if (pin->gpio == ((void*)0)) {

        return GPIO_NOPULL;
    }
    volatile uint32_t *port_pcr = GPIO_PIN_TO_PORT_PCR(pin->gpio, pin->pin);

    uint32_t pcr = *port_pcr;
    uint32_t af = (pcr & PORT_PCR_MUX_MASK) >> 8;



    if (af > 0 && (pcr & PORT_PCR_PE) != 0) {
        if (pcr & PORT_PCR_PS) {
            return GPIO_PULLUP;
        }
        return GPIO_PULLDOWN;
    }
    return GPIO_NOPULL;
}
