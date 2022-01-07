
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbentry {int bus_num; int dev_num; int vendor_id; int product_id; char* product_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char*) ;
 struct usbentry* parse_devlist (int *) ;
 int printf (char*,int,int,int,int,char*) ;

__attribute__((used)) static void list_devices(void)
{
 DIR *devs = opendir("/sys/bus/usb/devices");
 struct usbentry *dev;

 if (!devs)
  return;

 while ((dev = parse_devlist(devs)) != ((void*)0))
 {
  printf("  Number %03d/%03d  ID %04x:%04x  %s\n",
      dev->bus_num, dev->dev_num,
      dev->vendor_id, dev->product_id,
      dev->product_name);
 }

 closedir(devs);
}
