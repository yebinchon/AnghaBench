
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*) ;
 scalar_t__ refresh_imported_device_list () ;

int usbip_vhci_refresh_device_list(void)
{

 if (refresh_imported_device_list())
  goto err;

 return 0;
err:
 dbg("failed to refresh device list");
 return -1;
}
