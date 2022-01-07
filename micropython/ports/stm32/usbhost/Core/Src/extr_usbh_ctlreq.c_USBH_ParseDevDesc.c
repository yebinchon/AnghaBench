
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {void* bNumConfigurations; void* iSerialNumber; void* iProduct; void* iManufacturer; void* bcdDevice; void* idProduct; void* idVendor; void* bMaxPacketSize; void* bDeviceProtocol; void* bDeviceSubClass; void* bDeviceClass; void* bcdUSB; void* bDescriptorType; void* bLength; } ;
typedef TYPE_1__ USBH_DevDescTypeDef ;


 void* LE16 (void**) ;

__attribute__((used)) static void USBH_ParseDevDesc (USBH_DevDescTypeDef* dev_desc,
                                uint8_t *buf,
                                uint16_t length)
{
  dev_desc->bLength = *(uint8_t *) (buf + 0);
  dev_desc->bDescriptorType = *(uint8_t *) (buf + 1);
  dev_desc->bcdUSB = LE16 (buf + 2);
  dev_desc->bDeviceClass = *(uint8_t *) (buf + 4);
  dev_desc->bDeviceSubClass = *(uint8_t *) (buf + 5);
  dev_desc->bDeviceProtocol = *(uint8_t *) (buf + 6);
  dev_desc->bMaxPacketSize = *(uint8_t *) (buf + 7);

  if (length > 8)
  {

    dev_desc->idVendor = LE16 (buf + 8);
    dev_desc->idProduct = LE16 (buf + 10);
    dev_desc->bcdDevice = LE16 (buf + 12);
    dev_desc->iManufacturer = *(uint8_t *) (buf + 14);
    dev_desc->iProduct = *(uint8_t *) (buf + 15);
    dev_desc->iSerialNumber = *(uint8_t *) (buf + 16);
    dev_desc->bNumConfigurations = *(uint8_t *) (buf + 17);
  }
}
