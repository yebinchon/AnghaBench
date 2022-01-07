
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int io_buffers_queue_t ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__* config; int obqueue; } ;
struct TYPE_4__ {int bulk_in; int usbp; } ;
typedef TYPE_2__ QMKUSBDriver ;


 scalar_t__ QMKUSB_READY ;
 scalar_t__ USB_ACTIVE ;
 TYPE_2__* bqGetLinkX (int *) ;
 int * obqGetFullBufferI (int *,size_t*) ;
 scalar_t__ usbGetDriverStateI (int ) ;
 int usbGetTransmitStatusI (int ,int ) ;
 int usbStartTransmitI (int ,int ,int *,size_t) ;

__attribute__((used)) static void obnotify(io_buffers_queue_t *bqp) {
    size_t n;
    QMKUSBDriver *qmkusbp = bqGetLinkX(bqp);



    if ((usbGetDriverStateI(qmkusbp->config->usbp) != USB_ACTIVE) || (qmkusbp->state != QMKUSB_READY)) {
        return;
    }


    if (!usbGetTransmitStatusI(qmkusbp->config->usbp, qmkusbp->config->bulk_in)) {

        uint8_t *buf = obqGetFullBufferI(&qmkusbp->obqueue, &n);
        if (buf != ((void*)0)) {

            usbStartTransmitI(qmkusbp->config->usbp, qmkusbp->config->bulk_in, buf, n);
        }
    }
}
