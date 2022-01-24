#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ ** in_params; int /*<<< orphan*/ ** out_params; } ;
typedef  TYPE_2__ USBDriver ;
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  obqueue; int /*<<< orphan*/  ibqueue; TYPE_1__* config; } ;
struct TYPE_6__ {unsigned int bulk_in; unsigned int bulk_out; unsigned int int_in; TYPE_2__* usbp; } ;
typedef  TYPE_3__ QMKUSBDriver ;

/* Variables and functions */
 int /*<<< orphan*/  CHN_DISCONNECTED ; 
 scalar_t__ QMKUSB_READY ; 
 scalar_t__ QMKUSB_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(QMKUSBDriver *qmkusbp) {
    USBDriver *usbp = qmkusbp->config->usbp;

    FUNC4(qmkusbp != NULL);

    FUNC6();

    FUNC3((qmkusbp->state == QMKUSB_STOP) || (qmkusbp->state == QMKUSB_READY), "invalid state");

    /* Driver in stopped state.*/
    usbp->in_params[qmkusbp->config->bulk_in - 1U]   = NULL;
    usbp->out_params[qmkusbp->config->bulk_out - 1U] = NULL;
    if (qmkusbp->config->int_in > 0U) {
        usbp->in_params[qmkusbp->config->int_in - 1U] = NULL;
    }
    qmkusbp->config = NULL;
    qmkusbp->state  = QMKUSB_STOP;

    /* Enforces a disconnection.*/
    FUNC0(qmkusbp, CHN_DISCONNECTED);
    FUNC1(&qmkusbp->ibqueue);
    FUNC2(&qmkusbp->obqueue);
    FUNC5();

    FUNC7();
}