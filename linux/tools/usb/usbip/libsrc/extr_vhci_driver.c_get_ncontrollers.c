
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udev_device {int dummy; } ;
typedef int **** dirent ;
struct TYPE_2__ {int hc_device; } ;


 int err (char*) ;
 int free (int ******) ;
 int scandir (int ,int *******,int ,int *) ;
 struct udev_device* udev_device_get_parent (int ) ;
 int udev_device_get_syspath (struct udev_device*) ;
 TYPE_1__* vhci_driver ;
 int vhci_hcd_filter ;

__attribute__((used)) static int get_ncontrollers(void)
{
 struct dirent **namelist;
 struct udev_device *platform;
 int n;

 platform = udev_device_get_parent(vhci_driver->hc_device);
 if (platform == ((void*)0))
  return -1;

 n = scandir(udev_device_get_syspath(platform), &namelist, vhci_hcd_filter, ((void*)0));
 if (n < 0)
  err("scandir failed");
 else {
  for (int i = 0; i < n; i++)
   free(namelist[i]);
  free(namelist);
 }

 return n;
}
