
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ** in_params; int ** out_params; } ;
typedef TYPE_2__ USBDriver ;
struct TYPE_8__ {scalar_t__ state; int obqueue; int ibqueue; TYPE_1__* config; } ;
struct TYPE_6__ {unsigned int bulk_in; unsigned int bulk_out; unsigned int int_in; TYPE_2__* usbp; } ;
typedef TYPE_3__ QMKUSBDriver ;


 int CHN_DISCONNECTED ;
 scalar_t__ QMKUSB_READY ;
 scalar_t__ QMKUSB_STOP ;
 int chnAddFlagsI (TYPE_3__*,int ) ;
 int ibqResetI (int *) ;
 int obqResetI (int *) ;
 int osalDbgAssert (int,char*) ;
 int osalDbgCheck (int ) ;
 int osalOsRescheduleS () ;
 int osalSysLock () ;
 int osalSysUnlock () ;

void qmkusbStop(QMKUSBDriver *qmkusbp) {
    USBDriver *usbp = qmkusbp->config->usbp;

    osalDbgCheck(qmkusbp != ((void*)0));

    osalSysLock();

    osalDbgAssert((qmkusbp->state == QMKUSB_STOP) || (qmkusbp->state == QMKUSB_READY), "invalid state");


    usbp->in_params[qmkusbp->config->bulk_in - 1U] = ((void*)0);
    usbp->out_params[qmkusbp->config->bulk_out - 1U] = ((void*)0);
    if (qmkusbp->config->int_in > 0U) {
        usbp->in_params[qmkusbp->config->int_in - 1U] = ((void*)0);
    }
    qmkusbp->config = ((void*)0);
    qmkusbp->state = QMKUSB_STOP;


    chnAddFlagsI(qmkusbp, CHN_DISCONNECTED);
    ibqResetI(&qmkusbp->ibqueue);
    obqResetI(&qmkusbp->obqueue);
    osalOsRescheduleS();

    osalSysUnlock();
}
