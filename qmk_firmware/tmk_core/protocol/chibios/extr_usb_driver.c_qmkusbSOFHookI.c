
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__* config; int obqueue; } ;
struct TYPE_4__ {size_t in_size; int bulk_in; int usbp; scalar_t__ fixed_size; } ;
typedef TYPE_2__ QMKUSBDriver ;


 scalar_t__ QMKUSB_READY ;
 scalar_t__ USB_ACTIVE ;
 int memset (int *,int ,size_t) ;
 int * obqGetFullBufferI (int *,size_t*) ;
 scalar_t__ obqTryFlushI (int *) ;
 int osalDbgAssert (int ,char*) ;
 scalar_t__ usbGetDriverStateI (int ) ;
 scalar_t__ usbGetTransmitStatusI (int ,int ) ;
 int usbStartTransmitI (int ,int ,int *,size_t) ;

void qmkusbSOFHookI(QMKUSBDriver *qmkusbp) {


    if ((usbGetDriverStateI(qmkusbp->config->usbp) != USB_ACTIVE) || (qmkusbp->state != QMKUSB_READY)) {
        return;
    }



    if (usbGetTransmitStatusI(qmkusbp->config->usbp, qmkusbp->config->bulk_in)) {
        return;
    }



    if (obqTryFlushI(&qmkusbp->obqueue)) {
        size_t n;
        uint8_t *buf = obqGetFullBufferI(&qmkusbp->obqueue, &n);


        if (qmkusbp->config->fixed_size) {
            memset(buf + n, 0, qmkusbp->config->in_size - n);
            n = qmkusbp->config->in_size;
        }

        osalDbgAssert(buf != ((void*)0), "queue is empty");

        usbStartTransmitI(qmkusbp->config->usbp, qmkusbp->config->bulk_in, buf, n);
    }
}
