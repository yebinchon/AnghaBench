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
struct TYPE_6__ {TYPE_2__** in_params; TYPE_2__** out_params; } ;
typedef  TYPE_1__ USBDriver ;
struct TYPE_8__ {unsigned int bulk_in; unsigned int bulk_out; unsigned int int_in; TYPE_1__* usbp; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_3__ const* config; } ;
typedef  TYPE_2__ QMKUSBDriver ;
typedef  TYPE_3__ QMKUSBConfig ;

/* Variables and functions */
 scalar_t__ QMKUSB_READY ; 
 scalar_t__ QMKUSB_STOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(QMKUSBDriver *qmkusbp, const QMKUSBConfig *config) {
    USBDriver *usbp = config->usbp;

    FUNC1(qmkusbp != NULL);

    FUNC2();
    FUNC0((qmkusbp->state == QMKUSB_STOP) || (qmkusbp->state == QMKUSB_READY), "invalid state");
    usbp->in_params[config->bulk_in - 1U]   = qmkusbp;
    usbp->out_params[config->bulk_out - 1U] = qmkusbp;
    if (config->int_in > 0U) {
        usbp->in_params[config->int_in - 1U] = qmkusbp;
    }
    qmkusbp->config = config;
    qmkusbp->state  = QMKUSB_READY;
    FUNC3();
}