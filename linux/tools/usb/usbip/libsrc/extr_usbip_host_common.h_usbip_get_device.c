
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct usbip_exported_device* (* get_device ) (struct usbip_host_driver*,int) ;} ;
struct usbip_host_driver {TYPE_1__ ops; } ;
struct usbip_exported_device {int dummy; } ;


 struct usbip_exported_device* stub1 (struct usbip_host_driver*,int) ;

__attribute__((used)) static inline struct usbip_exported_device *
usbip_get_device(struct usbip_host_driver *hdriver, int num)
{
 if (!hdriver->ops.get_device)
  return ((void*)0);
 return hdriver->ops.get_device(hdriver, num);
}
