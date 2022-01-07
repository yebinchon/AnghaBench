
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int usbep_t ;
struct TYPE_8__ {TYPE_3__** out_params; } ;
typedef TYPE_2__ USBDriver ;
struct TYPE_9__ {TYPE_1__* config; int ibqueue; } ;
struct TYPE_7__ {int bulk_out; int usbp; } ;
typedef TYPE_3__ QMKUSBDriver ;


 int CHN_INPUT_AVAILABLE ;
 int chnAddFlagsI (TYPE_3__*,int ) ;
 int ibqPostFullBufferI (int *,int ) ;
 int osalSysLockFromISR () ;
 int osalSysUnlockFromISR () ;
 int qmkusb_start_receive (TYPE_3__*) ;
 int usbGetReceiveTransactionSizeX (int ,int ) ;

void qmkusbDataReceived(USBDriver *usbp, usbep_t ep) {
    QMKUSBDriver *qmkusbp = usbp->out_params[ep - 1U];
    if (qmkusbp == ((void*)0)) {
        return;
    }

    osalSysLockFromISR();


    chnAddFlagsI(qmkusbp, CHN_INPUT_AVAILABLE);


    ibqPostFullBufferI(&qmkusbp->ibqueue, usbGetReceiveTransactionSizeX(qmkusbp->config->usbp, qmkusbp->config->bulk_out));




    (void)qmkusb_start_receive(qmkusbp);

    osalSysUnlockFromISR();
}
