
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;


 int le16_to_cpu (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void handle_setup(const struct usb_ctrlrequest *setup)
{
 printf("bRequestType = %d\n", setup->bRequestType);
 printf("bRequest     = %d\n", setup->bRequest);
 printf("wValue       = %d\n", le16_to_cpu(setup->wValue));
 printf("wIndex       = %d\n", le16_to_cpu(setup->wIndex));
 printf("wLength      = %d\n", le16_to_cpu(setup->wLength));
}
