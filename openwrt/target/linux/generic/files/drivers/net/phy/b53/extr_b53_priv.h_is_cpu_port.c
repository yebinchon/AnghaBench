
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_port; } ;
struct b53_device {TYPE_1__ sw_dev; } ;



__attribute__((used)) static inline int is_cpu_port(struct b53_device *dev, int port)
{
 return dev->sw_dev.cpu_port == port;
}
