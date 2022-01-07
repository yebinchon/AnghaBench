
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* close ) (struct usbip_host_driver*) ;} ;
struct usbip_host_driver {TYPE_1__ ops; } ;


 int stub1 (struct usbip_host_driver*) ;

__attribute__((used)) static inline void usbip_driver_close(struct usbip_host_driver *hdriver)
{
 if (!hdriver->ops.close)
  return;
 hdriver->ops.close(hdriver);
}
