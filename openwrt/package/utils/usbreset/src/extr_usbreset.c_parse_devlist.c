
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbentry {void* product_id; void* vendor_id; void* dev_num; void* bus_num; int product_name; int vendor_name; } ;
struct dirent {int * d_name; } ;
typedef int dev ;
typedef int DIR ;


 int isdigit (int ) ;
 int memset (struct usbentry*,int ,int) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strchr (int *,char) ;
 int strcpy (int ,char*) ;
 void* strtoul (char*,int *,int) ;
 char* sysfs_attr (int *,char*) ;

__attribute__((used)) static struct usbentry * parse_devlist(DIR *d)
{
 char *attr;
 struct dirent *e;
 static struct usbentry dev;

 do {
  e = readdir(d);

  if (!e)
   return ((void*)0);
 }
 while(!isdigit(e->d_name[0]) || strchr(e->d_name, ':'));

 memset(&dev, 0, sizeof(dev));

 if ((attr = sysfs_attr(e->d_name, "busnum")) != ((void*)0))
  dev.bus_num = strtoul(attr, ((void*)0), 10);

 if ((attr = sysfs_attr(e->d_name, "devnum")) != ((void*)0))
  dev.dev_num = strtoul(attr, ((void*)0), 10);

 if ((attr = sysfs_attr(e->d_name, "idVendor")) != ((void*)0))
  dev.vendor_id = strtoul(attr, ((void*)0), 16);

 if ((attr = sysfs_attr(e->d_name, "idProduct")) != ((void*)0))
  dev.product_id = strtoul(attr, ((void*)0), 16);

 if ((attr = sysfs_attr(e->d_name, "manufacturer")) != ((void*)0))
  strcpy(dev.vendor_name, attr);

 if ((attr = sysfs_attr(e->d_name, "product")) != ((void*)0))
  strcpy(dev.product_name, attr);

 if (dev.bus_num && dev.dev_num && dev.vendor_id && dev.product_id)
  return &dev;

 return ((void*)0);
}
