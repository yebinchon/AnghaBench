
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {void* w; } ;
struct TYPE_11__ {void* w; } ;
struct TYPE_10__ {void* w; } ;
struct TYPE_13__ {int bmRequestType; TYPE_3__ wLength; TYPE_2__ wIndex; TYPE_1__ wValue; int bRequest; } ;
struct TYPE_14__ {TYPE_4__ b; } ;
struct TYPE_15__ {TYPE_5__ setup; } ;
struct TYPE_16__ {TYPE_6__ Control; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;


 int SAMPLING_FREQ_CONTROL ;
 int UAC_SET_CUR ;
 int USBH_CtlReq (TYPE_7__*,void**,void*) ;
 int USB_H2D ;
 int USB_REQ_RECIPIENT_ENDPOINT ;
 int USB_REQ_TYPE_CLASS ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_SetEndpointControls(USBH_HandleTypeDef *phost,
                                               uint8_t Ep,
                                               uint8_t *buff)
{
  uint16_t wValue, wIndex, wLength;


  wValue = SAMPLING_FREQ_CONTROL << 8;
  wIndex = Ep;
  wLength = 3;

  phost->Control.setup.b.bmRequestType = USB_H2D | USB_REQ_RECIPIENT_ENDPOINT | USB_REQ_TYPE_CLASS;


  phost->Control.setup.b.bRequest = UAC_SET_CUR;
  phost->Control.setup.b.wValue.w = wValue;
  phost->Control.setup.b.wIndex.w = wIndex;
  phost->Control.setup.b.wLength.w = wLength;

  return(USBH_CtlReq(phost, (uint8_t *)buff, wLength ));

}
