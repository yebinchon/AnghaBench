
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int usbep_t ;
typedef int uint8_t ;
struct TYPE_12__ {int * setup; TYPE_2__** epc; TYPE_5__** in_params; } ;
typedef TYPE_4__ USBDriver ;
struct TYPE_13__ {TYPE_3__* config; int obqueue; } ;
struct TYPE_11__ {int fixed_size; } ;
struct TYPE_10__ {scalar_t__ in_maxsize; TYPE_1__* in_state; } ;
struct TYPE_9__ {unsigned int txsize; } ;
typedef TYPE_5__ QMKUSBDriver ;


 int CHN_OUTPUT_EMPTY ;
 int chnAddFlagsI (TYPE_5__*,int ) ;
 int * obqGetFullBufferI (int *,size_t*) ;
 int obqReleaseEmptyBufferI (int *) ;
 int osalSysLockFromISR () ;
 int osalSysUnlockFromISR () ;
 int usbStartTransmitI (TYPE_4__*,unsigned int,int *,size_t) ;

void qmkusbDataTransmitted(USBDriver *usbp, usbep_t ep) {
    uint8_t * buf;
    size_t n;
    QMKUSBDriver *qmkusbp = usbp->in_params[ep - 1U];

    if (qmkusbp == ((void*)0)) {
        return;
    }

    osalSysLockFromISR();


    chnAddFlagsI(qmkusbp, CHN_OUTPUT_EMPTY);


    if (usbp->epc[ep]->in_state->txsize > 0U) {
        obqReleaseEmptyBufferI(&qmkusbp->obqueue);
    }


    buf = obqGetFullBufferI(&qmkusbp->obqueue, &n);

    if (buf != ((void*)0)) {


        usbStartTransmitI(usbp, ep, buf, n);
    } else if ((usbp->epc[ep]->in_state->txsize > 0U) && ((usbp->epc[ep]->in_state->txsize & ((size_t)usbp->epc[ep]->in_maxsize - 1U)) == 0U)) {




        if (!qmkusbp->config->fixed_size) {
            usbStartTransmitI(usbp, ep, usbp->setup, 0);
        }

    } else {

    }

    osalSysUnlockFromISR();
}
