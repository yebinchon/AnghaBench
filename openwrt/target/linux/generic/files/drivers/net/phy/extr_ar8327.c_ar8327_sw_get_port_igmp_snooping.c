
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int reg_mutex; } ;


 int EINVAL ;
 int ar8327_get_port_igmp (struct ar8xxx_priv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8327_sw_get_port_igmp_snooping(struct switch_dev *dev,
     const struct switch_attr *attr,
     struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 int port = val->port_vlan;

 if (port >= dev->ports)
  return -EINVAL;

 mutex_lock(&priv->reg_mutex);
 val->value.i = ar8327_get_port_igmp(priv, port);
 mutex_unlock(&priv->reg_mutex);

 return 0;
}
