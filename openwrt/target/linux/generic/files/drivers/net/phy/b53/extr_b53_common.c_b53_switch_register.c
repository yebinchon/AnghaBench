
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int alias; } ;
struct b53_device {TYPE_2__ sw_dev; int core_rev; int chip_id; TYPE_1__* pdata; int enabled_ports; } ;
struct TYPE_3__ {int alias; int enabled_ports; int chip_id; } ;


 int EINVAL ;
 scalar_t__ b53_switch_detect (struct b53_device*) ;
 int b53_switch_init (struct b53_device*) ;
 int pr_info (char*,int ,int ) ;
 int register_switch (TYPE_2__*,int *) ;

int b53_switch_register(struct b53_device *dev)
{
 int ret;

 if (dev->pdata) {
  dev->chip_id = dev->pdata->chip_id;
  dev->enabled_ports = dev->pdata->enabled_ports;
  dev->sw_dev.alias = dev->pdata->alias;
 }

 if (!dev->chip_id && b53_switch_detect(dev))
  return -EINVAL;

 ret = b53_switch_init(dev);
 if (ret)
  return ret;

 pr_info("found switch: %s, rev %i\n", dev->sw_dev.name, dev->core_rev);

 return register_switch(&dev->sw_dev, ((void*)0));
}
