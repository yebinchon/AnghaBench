#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int started; int /*<<< orphan*/  hUSBDDevice; } ;
typedef  TYPE_1__ pyb_usbdd_obj_t ;
struct TYPE_5__ {int CR3; } ;

/* Variables and functions */
 TYPE_3__* PWR ; 
 int PWR_CR3_USB33DEN ; 
 int PWR_CR3_USB33RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbd_fifo_size ; 

__attribute__((used)) static void FUNC2(pyb_usbdd_obj_t *self) {
    if (!self->started) {
        #if defined(STM32H7)
        PWR->CR3 |= PWR_CR3_USB33DEN;
        while (!(PWR->CR3 & PWR_CR3_USB33RDY)) {
        }
        #endif
        FUNC0(&self->hUSBDDevice, 0, usbd_fifo_size);
        FUNC1(&self->hUSBDDevice);
        self->started = true;
    }
}