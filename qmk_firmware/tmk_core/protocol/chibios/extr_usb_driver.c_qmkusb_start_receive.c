
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ bsize; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_4__ ibqueue; TYPE_1__* config; } ;
struct TYPE_5__ {int bulk_out; int usbp; int bulk_in; } ;
typedef TYPE_2__ QMKUSBDriver ;


 scalar_t__ QMKUSB_READY ;
 scalar_t__ USB_ACTIVE ;
 int * ibqGetEmptyBufferI (TYPE_4__*) ;
 scalar_t__ usbGetDriverStateI (int ) ;
 scalar_t__ usbGetReceiveStatusI (int ,int ) ;
 int usbStartReceiveI (int ,int ,int *,scalar_t__) ;

__attribute__((used)) static bool qmkusb_start_receive(QMKUSBDriver *qmkusbp) {
    uint8_t *buf;



    if ((usbGetDriverStateI(qmkusbp->config->usbp) != USB_ACTIVE) || (qmkusbp->state != QMKUSB_READY)) {
        return 1;
    }


    if (usbGetReceiveStatusI(qmkusbp->config->usbp, qmkusbp->config->bulk_in)) {
        return 1;
    }


    buf = ibqGetEmptyBufferI(&qmkusbp->ibqueue);
    if (buf == ((void*)0)) {
        return 1;
    }


    usbStartReceiveI(qmkusbp->config->usbp, qmkusbp->config->bulk_out, buf, qmkusbp->ibqueue.bsize - sizeof(size_t));

    return 0;
}
