
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int tx_pending; int tx_buf; int hUSBDDevice; int wLength; int wValue; int bRequest; int rx_buf; } ;
typedef TYPE_1__ pyb_usbdd_obj_t ;
struct TYPE_8__ {int bmRequest; int wLength; int wValue; int bRequest; } ;
typedef TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_9__ {scalar_t__ pClassData; } ;
typedef TYPE_3__ USBD_HandleTypeDef ;


 int USBD_CtlPrepareRx (TYPE_3__*,int ,int ) ;
 int USBD_CtlSendData (int *,int ,int) ;
 int USBD_OK ;
 int USB_XFER_SIZE ;
 int dfu_handle_rx (int ,int ,int ,int *) ;
 int dfu_handle_tx (int ,int ,int ,int ,int ) ;

__attribute__((used)) static uint8_t pyb_usbdd_Setup(USBD_HandleTypeDef *pdev, USBD_SetupReqTypedef *req) {
    pyb_usbdd_obj_t *self = (pyb_usbdd_obj_t*)pdev->pClassData;
    (void)self;
    self->bRequest = req->bRequest;
    self->wValue = req->wValue;
    self->wLength = req->wLength;
    if (req->bmRequest == 0x21) {

        if (req->wLength == 0) {

            dfu_handle_rx(self->bRequest, self->wValue, 0, ((void*)0));
        } else {

            USBD_CtlPrepareRx(pdev, self->rx_buf, req->wLength);
        }
    } else if (req->bmRequest == 0xa1) {

        int len = dfu_handle_tx(self->bRequest, self->wValue, self->wLength, self->tx_buf, USB_XFER_SIZE);
        if (len >= 0) {
            self->tx_pending = 1;
            USBD_CtlSendData(&self->hUSBDDevice, self->tx_buf, len);
        }
    }
    return USBD_OK;
}
