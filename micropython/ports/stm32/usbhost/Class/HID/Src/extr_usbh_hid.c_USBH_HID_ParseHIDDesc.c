
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void* wItemLength; void* bReportDescriptorType; void* bNumDescriptors; void* bCountryCode; void* bcdHID; void* bDescriptorType; void* bLength; } ;
typedef TYPE_1__ HID_DescTypeDef ;


 void* LE16 (void**) ;

__attribute__((used)) static void USBH_HID_ParseHIDDesc (HID_DescTypeDef *desc, uint8_t *buf)
{

  desc->bLength = *(uint8_t *) (buf + 0);
  desc->bDescriptorType = *(uint8_t *) (buf + 1);
  desc->bcdHID = LE16 (buf + 2);
  desc->bCountryCode = *(uint8_t *) (buf + 4);
  desc->bNumDescriptors = *(uint8_t *) (buf + 5);
  desc->bReportDescriptorType = *(uint8_t *) (buf + 6);
  desc->wItemLength = LE16 (buf + 7);
}
