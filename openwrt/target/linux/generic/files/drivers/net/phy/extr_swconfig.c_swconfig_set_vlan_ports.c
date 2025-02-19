
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {scalar_t__ len; int port_vlan; TYPE_1__ value; } ;
struct switch_port {scalar_t__ id; int flags; } ;
struct switch_dev_ops {int (* set_vlan_ports ) (struct switch_dev*,struct switch_val*) ;int (* set_port_pvid ) (struct switch_dev*,scalar_t__,int ) ;} ;
struct switch_dev {scalar_t__ ports; int vlans; struct switch_dev_ops* ops; } ;
struct switch_attr {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int SWITCH_PORT_FLAG_TAGGED ;
 int stub1 (struct switch_dev*,scalar_t__,int ) ;
 int stub2 (struct switch_dev*,struct switch_val*) ;

__attribute__((used)) static int
swconfig_set_vlan_ports(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{
 struct switch_port *ports = val->value.ports;
 const struct switch_dev_ops *ops = dev->ops;
 int i;

 if (val->port_vlan >= dev->vlans)
  return -EINVAL;


 if (val->len > dev->ports)
  return -EINVAL;

 if (!ops->set_vlan_ports)
  return -EOPNOTSUPP;

 for (i = 0; i < val->len; i++) {
  if (ports[i].id >= dev->ports)
   return -EINVAL;

  if (ops->set_port_pvid &&
      !(ports[i].flags & (1 << SWITCH_PORT_FLAG_TAGGED)))
   ops->set_port_pvid(dev, ports[i].id, val->port_vlan);
 }

 return ops->set_vlan_ports(dev, val);
}
