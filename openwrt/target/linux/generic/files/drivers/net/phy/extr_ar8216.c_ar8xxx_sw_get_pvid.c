
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct ar8xxx_priv {int* pvid; } ;


 int AR8X16_MAX_PORTS ;
 int EINVAL ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_get_pvid(struct switch_dev *dev, int port, int *vlan)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);

 if (port < 0 || port >= AR8X16_MAX_PORTS)
  return -EINVAL;

 *vlan = priv->pvid[port];
 return 0;
}
