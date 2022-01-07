
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int mib_type; } ;


 int EOPNOTSUPP ;
 int ar8xxx_has_mib_counters (struct ar8xxx_priv*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_get_mib_type(struct switch_dev *dev,
          const struct switch_attr *attr,
          struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);

 if (!ar8xxx_has_mib_counters(priv))
  return -EOPNOTSUPP;
 val->value.i = priv->mib_type;
 return 0;
}
