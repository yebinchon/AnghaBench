
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int bLength; scalar_t__ bDescriptorType; int bNumEndpoints; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; scalar_t__ bInterfaceNumber; } ;
typedef int FILE ;


 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 scalar_t__ USB_DT_INTERFACE ;
 int fread (char*,unsigned char,int,int *) ;

__attribute__((used)) static int testdev_ffs_ifnum(FILE *fd)
{
 union {
  char buf[255];
  struct usb_interface_descriptor intf;
 } u;

 for (;;) {
  if (fread(u.buf, 1, 1, fd) != 1)
   return -1;
  if (fread(u.buf + 1, (unsigned char)u.buf[0] - 1, 1, fd) != 1)
   return -1;

  if (u.intf.bLength == sizeof u.intf
   && u.intf.bDescriptorType == USB_DT_INTERFACE
   && u.intf.bNumEndpoints == 2
   && u.intf.bInterfaceClass == USB_CLASS_VENDOR_SPEC
   && u.intf.bInterfaceSubClass == 0
   && u.intf.bInterfaceProtocol == 0)
   return (unsigned char)u.intf.bInterfaceNumber;
 }
}
