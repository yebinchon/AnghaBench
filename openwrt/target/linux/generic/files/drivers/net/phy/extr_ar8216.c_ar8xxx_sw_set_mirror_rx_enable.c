
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int mirror_rx; int reg_mutex; TYPE_2__* chip; } ;
struct TYPE_4__ {int (* set_mirror_regs ) (struct ar8xxx_priv*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ar8xxx_priv*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_set_mirror_rx_enable(struct switch_dev *dev,
          const struct switch_attr *attr,
          struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);

 mutex_lock(&priv->reg_mutex);
 priv->mirror_rx = !!val->value.i;
 priv->chip->set_mirror_regs(priv);
 mutex_unlock(&priv->reg_mutex);

 return 0;
}
