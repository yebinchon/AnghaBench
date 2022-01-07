
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {char* dev_name; char* alias; char* name; int ports; int cpu_port; int vlans; int port_ops; int vlan_ops; int ops; } ;


 int print_attrs (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
list_attributes(struct switch_dev *dev)
{
 printf("%s: %s(%s), ports: %d (cpu @ %d), vlans: %d\n", dev->dev_name, dev->alias, dev->name, dev->ports, dev->cpu_port, dev->vlans);
 printf("     --switch\n");
 print_attrs(dev->ops);
 printf("     --vlan\n");
 print_attrs(dev->vlan_ops);
 printf("     --port\n");
 print_attrs(dev->port_ops);
}
