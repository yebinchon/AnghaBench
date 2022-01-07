
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_descriptor {int bLength; scalar_t__ bDescriptorType; int idVendor; int idProduct; scalar_t__ bDeviceClass; } ;
typedef int FILE ;


 scalar_t__ USB_CLASS_PER_INTERFACE ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 scalar_t__ USB_DT_DEVICE ;
 int fread (struct usb_device_descriptor*,int,int,int *) ;
 int testdev_ffs_ifnum (int *) ;

__attribute__((used)) static int testdev_ifnum(FILE *fd)
{
 struct usb_device_descriptor dev;

 if (fread(&dev, sizeof dev, 1, fd) != 1)
  return -1;

 if (dev.bLength != sizeof dev || dev.bDescriptorType != USB_DT_DEVICE)
  return -1;


 if (dev.idVendor == 0x0547 && dev.idProduct == 0x1002)
  return 0;
 if (dev.idVendor == 0x0547 && dev.idProduct == 0x2235)
  return 0;


 if (dev.idVendor == 0x04b4 && dev.idProduct == 0x8613)
  return 0;


 if (dev.idVendor == 0x0547 && dev.idProduct == 0x0080)
  return 0;


 if (dev.idVendor == 0x06cd && dev.idProduct == 0x010b)
  return 0;




 if (dev.idVendor == 0x0525 && dev.idProduct == 0xa4a0)
  return 0;


 if (dev.idVendor == 0x0525 && dev.idProduct == 0xa4a4)
  return testdev_ffs_ifnum(fd);



 if (dev.idVendor == 0x0525 && dev.idProduct == 0xa4a3)
  return 0;



 if (dev.idVendor == 0xfff0 && dev.idProduct == 0xfff0)
  return 0;




 if (dev.idVendor == 0x0b62 && dev.idProduct == 0x0059)
  return 0;







 if (dev.idVendor == 0x0525 && dev.idProduct == 0xa4ac
  && (dev.bDeviceClass == USB_CLASS_PER_INTERFACE
   || dev.bDeviceClass == USB_CLASS_VENDOR_SPEC))
  return testdev_ffs_ifnum(fd);

 return -1;
}
