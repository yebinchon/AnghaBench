
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int reg_mutex; } ;


 int AR8327_FRAME_ACK_CTRL_IGMP_V3_EN ;
 int AR8327_REG_FRAME_ACK_CTRL1 ;
 int ar8xxx_reg_clear (struct ar8xxx_priv*,int ,int ) ;
 int ar8xxx_reg_set (struct ar8xxx_priv*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8327_sw_set_igmp_v3(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);

 mutex_lock(&priv->reg_mutex);
 if (val->value.i)
  ar8xxx_reg_set(priv, AR8327_REG_FRAME_ACK_CTRL1,
          AR8327_FRAME_ACK_CTRL_IGMP_V3_EN);
 else
  ar8xxx_reg_clear(priv, AR8327_REG_FRAME_ACK_CTRL1,
     AR8327_FRAME_ACK_CTRL_IGMP_V3_EN);
 mutex_unlock(&priv->reg_mutex);

 return 0;
}
