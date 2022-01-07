
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_host_driver {int edev_list; scalar_t__ ndevs; } ;


 int INIT_LIST_HEAD (int *) ;
 int refresh_exported_devices (struct usbip_host_driver*) ;
 int usbip_exported_device_destroy (int *) ;

int usbip_generic_refresh_device_list(struct usbip_host_driver *hdriver)
{
 int rc;

 usbip_exported_device_destroy(&hdriver->edev_list);

 hdriver->ndevs = 0;
 INIT_LIST_HEAD(&hdriver->edev_list);

 rc = refresh_exported_devices(hdriver);
 if (rc < 0)
  return -1;

 return 0;
}
