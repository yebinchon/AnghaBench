#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  pin; int /*<<< orphan*/ * gpio; } ;
typedef  TYPE_1__ pin_obj_t ;

/* Variables and functions */
 int GPIO_NOPULL ; 
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int GPIO_PULLDOWN ; 
 int GPIO_PULLUP ; 
 int PORT_PCR_MUX_MASK ; 
 int PORT_PCR_PE ; 
 int PORT_PCR_PS ; 

uint32_t FUNC1(const pin_obj_t *pin) {
    if (pin->gpio == NULL) {
        // Analog only pin
        return GPIO_NOPULL;
    }
    volatile uint32_t *port_pcr = FUNC0(pin->gpio, pin->pin); 

    uint32_t pcr = *port_pcr;
    uint32_t af = (pcr & PORT_PCR_MUX_MASK) >> 8;

    // pull is only valid for digital modes (hence the af > 0 test)

    if (af > 0 && (pcr & PORT_PCR_PE) != 0) {
        if (pcr & PORT_PCR_PS) {
            return GPIO_PULLUP;
        }
        return GPIO_PULLDOWN;
    }
    return GPIO_NOPULL;
}