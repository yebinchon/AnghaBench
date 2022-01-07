
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int mib_lock; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ar8xxx_has_mib_counters (struct ar8xxx_priv*) ;
 int ar8xxx_mib_capture (struct ar8xxx_priv*) ;
 int ar8xxx_mib_fetch_port_stat (struct ar8xxx_priv*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_set_port_reset_mib(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 int port;
 int ret;

 if (!ar8xxx_has_mib_counters(priv))
  return -EOPNOTSUPP;

 port = val->port_vlan;
 if (port >= dev->ports)
  return -EINVAL;

 mutex_lock(&priv->mib_lock);
 ret = ar8xxx_mib_capture(priv);
 if (ret)
  goto unlock;

 ar8xxx_mib_fetch_port_stat(priv, port, 1);

 ret = 0;

unlock:
 mutex_unlock(&priv->mib_lock);
 return ret;
}
