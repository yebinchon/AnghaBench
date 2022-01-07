
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** in_params; TYPE_2__** out_params; } ;
typedef TYPE_1__ USBDriver ;
struct TYPE_8__ {unsigned int bulk_in; unsigned int bulk_out; unsigned int int_in; TYPE_1__* usbp; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_3__ const* config; } ;
typedef TYPE_2__ QMKUSBDriver ;
typedef TYPE_3__ QMKUSBConfig ;


 scalar_t__ QMKUSB_READY ;
 scalar_t__ QMKUSB_STOP ;
 int osalDbgAssert (int,char*) ;
 int osalDbgCheck (int ) ;
 int osalSysLock () ;
 int osalSysUnlock () ;

void qmkusbStart(QMKUSBDriver *qmkusbp, const QMKUSBConfig *config) {
    USBDriver *usbp = config->usbp;

    osalDbgCheck(qmkusbp != ((void*)0));

    osalSysLock();
    osalDbgAssert((qmkusbp->state == QMKUSB_STOP) || (qmkusbp->state == QMKUSB_READY), "invalid state");
    usbp->in_params[config->bulk_in - 1U] = qmkusbp;
    usbp->out_params[config->bulk_out - 1U] = qmkusbp;
    if (config->int_in > 0U) {
        usbp->in_params[config->int_in - 1U] = qmkusbp;
    }
    qmkusbp->config = config;
    qmkusbp->state = QMKUSB_READY;
    osalSysUnlock();
}
