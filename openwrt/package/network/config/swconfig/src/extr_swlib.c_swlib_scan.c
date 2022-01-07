
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {scalar_t__ vlan_ops; scalar_t__ port_ops; scalar_t__ ops; int id; } ;
struct attrlist_arg {scalar_t__* head; int * prev; int atype; int id; struct switch_dev* dev; } ;


 int SWITCH_CMD_LIST_GLOBAL ;
 int SWITCH_CMD_LIST_PORT ;
 int SWITCH_CMD_LIST_VLAN ;
 int SWLIB_ATTR_GROUP_GLOBAL ;
 int SWLIB_ATTR_GROUP_PORT ;
 int SWLIB_ATTR_GROUP_VLAN ;
 int add_attr ;
 int add_id ;
 int swlib_call (int ,int ,int ,struct attrlist_arg*) ;

int
swlib_scan(struct switch_dev *dev)
{
 struct attrlist_arg arg;

 if (dev->ops || dev->port_ops || dev->vlan_ops)
  return 0;

 arg.atype = SWLIB_ATTR_GROUP_GLOBAL;
 arg.dev = dev;
 arg.id = dev->id;
 arg.prev = ((void*)0);
 arg.head = &dev->ops;
 swlib_call(SWITCH_CMD_LIST_GLOBAL, add_attr, add_id, &arg);

 arg.atype = SWLIB_ATTR_GROUP_PORT;
 arg.prev = ((void*)0);
 arg.head = &dev->port_ops;
 swlib_call(SWITCH_CMD_LIST_PORT, add_attr, add_id, &arg);

 arg.atype = SWLIB_ATTR_GROUP_VLAN;
 arg.prev = ((void*)0);
 arg.head = &dev->vlan_ops;
 swlib_call(SWITCH_CMD_LIST_VLAN, add_attr, add_id, &arg);

 return 0;
}
