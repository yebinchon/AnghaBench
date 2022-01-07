
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* refresh_device_list ) (struct usbip_host_driver*) ;} ;
struct usbip_host_driver {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct usbip_host_driver*) ;

__attribute__((used)) static inline int usbip_refresh_device_list(struct usbip_host_driver *hdriver)
{
 if (!hdriver->ops.refresh_device_list)
  return -EOPNOTSUPP;
 return hdriver->ops.refresh_device_list(hdriver);
}
