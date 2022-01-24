#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__* config; int /*<<< orphan*/  obqueue; } ;
struct TYPE_4__ {size_t in_size; int /*<<< orphan*/  bulk_in; int /*<<< orphan*/  usbp; scalar_t__ fixed_size; } ;
typedef  TYPE_2__ QMKUSBDriver ;

/* Variables and functions */
 scalar_t__ QMKUSB_READY ; 
 scalar_t__ USB_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

void FUNC7(QMKUSBDriver *qmkusbp) {
    /* If the USB driver is not in the appropriate state then transactions
       must not be started.*/
    if ((FUNC4(qmkusbp->config->usbp) != USB_ACTIVE) || (qmkusbp->state != QMKUSB_READY)) {
        return;
    }

    /* If there is already a transaction ongoing then another one cannot be
       started.*/
    if (FUNC5(qmkusbp->config->usbp, qmkusbp->config->bulk_in)) {
        return;
    }

    /* Checking if there only a buffer partially filled, if so then it is
       enforced in the queue and transmitted.*/
    if (FUNC2(&qmkusbp->obqueue)) {
        size_t   n;
        uint8_t *buf = FUNC1(&qmkusbp->obqueue, &n);

        /* For fixed size drivers, fill the end with zeros */
        if (qmkusbp->config->fixed_size) {
            FUNC0(buf + n, 0, qmkusbp->config->in_size - n);
            n = qmkusbp->config->in_size;
        }

        FUNC3(buf != NULL, "queue is empty");

        FUNC6(qmkusbp->config->usbp, qmkusbp->config->bulk_in, buf, n);
    }
}