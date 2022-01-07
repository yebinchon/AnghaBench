
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void* bInterval; int wMaxPacketSize; void* bmAttributes; void* bEndpointAddress; void* bDescriptorType; void* bLength; } ;
typedef TYPE_1__ USBH_EpDescTypeDef ;


 int LE16 (void**) ;

__attribute__((used)) static void USBH_ParseEPDesc (USBH_EpDescTypeDef *ep_descriptor,
                               uint8_t *buf)
{

  ep_descriptor->bLength = *(uint8_t *) (buf + 0);
  ep_descriptor->bDescriptorType = *(uint8_t *) (buf + 1);
  ep_descriptor->bEndpointAddress = *(uint8_t *) (buf + 2);
  ep_descriptor->bmAttributes = *(uint8_t *) (buf + 3);
  ep_descriptor->wMaxPacketSize = LE16 (buf + 4);
  ep_descriptor->bInterval = *(uint8_t *) (buf + 6);
}
