
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int name; int * ops; int vlans; int ports; int cpu_port; int alias; } ;
struct gsw_mt753x {TYPE_1__* dev; int cpu_port; int name; struct switch_dev swdev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int MT753X_DFL_CPU_PORT ;
 int MT753X_NUM_PORTS ;
 int MT753X_NUM_VLANS ;
 int dev_notice (TYPE_1__*,char*,int ) ;
 int mt753x_apply_config (struct switch_dev*) ;
 int mt753x_swdev_ops ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int register_switch (struct switch_dev*,int *) ;

int mt753x_swconfig_init(struct gsw_mt753x *gsw)
{
 struct device_node *np = gsw->dev->of_node;
 struct switch_dev *swdev;
 int ret;

 if (of_property_read_u32(np, "mediatek,cpuport", &gsw->cpu_port))
  gsw->cpu_port = MT753X_DFL_CPU_PORT;

 swdev = &gsw->swdev;

 swdev->name = gsw->name;
 swdev->alias = gsw->name;
 swdev->cpu_port = gsw->cpu_port;
 swdev->ports = MT753X_NUM_PORTS;
 swdev->vlans = MT753X_NUM_VLANS;
 swdev->ops = &mt753x_swdev_ops;

 ret = register_switch(swdev, ((void*)0));
 if (ret) {
  dev_notice(gsw->dev, "Failed to register switch %s\n",
      swdev->name);
  return ret;
 }

 mt753x_apply_config(swdev);

 return 0;
}
