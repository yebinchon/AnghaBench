
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {char* name; int alias; int * ops; int vlans; int ports; int cpu_port; } ;
struct rtl8366_smi {int parent; struct switch_dev sw_dev; } ;


 int RTL8367_CPU_PORT_NUM ;
 int RTL8367_NUM_PORTS ;
 int RTL8367_NUM_VIDS ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int register_switch (struct switch_dev*,int *) ;
 int rtl8367_sw_ops ;

__attribute__((used)) static int rtl8367_switch_init(struct rtl8366_smi *smi)
{
 struct switch_dev *dev = &smi->sw_dev;
 int err;

 dev->name = "RTL8367";
 dev->cpu_port = RTL8367_CPU_PORT_NUM;
 dev->ports = RTL8367_NUM_PORTS;
 dev->vlans = RTL8367_NUM_VIDS;
 dev->ops = &rtl8367_sw_ops;
 dev->alias = dev_name(smi->parent);

 err = register_switch(dev, ((void*)0));
 if (err)
  dev_err(smi->parent, "switch registration failed\n");

 return err;
}
