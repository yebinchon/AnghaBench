
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int* port_vlan_prio; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

__attribute__((used)) static int
ar8327_sw_set_port_vlan_prio(struct switch_dev *dev, const struct switch_attr *attr,
        struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 int port = val->port_vlan;

 if (port >= dev->ports)
  return -EINVAL;
 if (port == 0 || port == 6)
  return -EOPNOTSUPP;
 if (val->value.i < 0 || val->value.i > 7)
  return -EINVAL;

 priv->port_vlan_prio[port] = val->value.i;

 return 0;
}
