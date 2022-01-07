
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {char* name; int alias; int * ops; int vlans; int ports; int cpu_port; } ;
struct rtl8366_smi {int parent; int cpu_port; struct switch_dev sw_dev; } ;


 int RTL8367B_NUM_PORTS ;
 int RTL8367B_NUM_VIDS ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int register_switch (struct switch_dev*,int *) ;
 int rtl8367b_sw_ops ;

__attribute__((used)) static int rtl8367b_switch_init(struct rtl8366_smi *smi)
{
 struct switch_dev *dev = &smi->sw_dev;
 int err;

 dev->name = "RTL8367B";
 dev->cpu_port = smi->cpu_port;
 dev->ports = RTL8367B_NUM_PORTS;
 dev->vlans = RTL8367B_NUM_VIDS;
 dev->ops = &rtl8367b_sw_ops;
 dev->alias = dev_name(smi->parent);

 err = register_switch(dev, ((void*)0));
 if (err)
  dev_err(smi->parent, "switch registration failed\n");

 return err;
}
