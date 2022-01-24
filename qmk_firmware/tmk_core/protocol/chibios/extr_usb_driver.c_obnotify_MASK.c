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
typedef  int /*<<< orphan*/  io_buffers_queue_t ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__* config; int /*<<< orphan*/  obqueue; } ;
struct TYPE_4__ {int /*<<< orphan*/  bulk_in; int /*<<< orphan*/  usbp; } ;
typedef  TYPE_2__ QMKUSBDriver ;

/* Variables and functions */
 scalar_t__ QMKUSB_READY ; 
 scalar_t__ USB_ACTIVE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC5(io_buffers_queue_t *bqp) {
    size_t        n;
    QMKUSBDriver *qmkusbp = FUNC0(bqp);

    /* If the USB driver is not in the appropriate state then transactions
       must not be started.*/
    if ((FUNC2(qmkusbp->config->usbp) != USB_ACTIVE) || (qmkusbp->state != QMKUSB_READY)) {
        return;
    }

    /* Checking if there is already a transaction ongoing on the endpoint.*/
    if (!FUNC3(qmkusbp->config->usbp, qmkusbp->config->bulk_in)) {
        /* Trying to get a full buffer.*/
        uint8_t *buf = FUNC1(&qmkusbp->obqueue, &n);
        if (buf != NULL) {
            /* Buffer found, starting a new transaction.*/
            FUNC4(qmkusbp->config->usbp, qmkusbp->config->bulk_in, buf, n);
        }
    }
}