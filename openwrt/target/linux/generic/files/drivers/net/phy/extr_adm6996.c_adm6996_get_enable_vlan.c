
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct adm6996_priv {int enable_vlan; } ;


 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_get_enable_vlan(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{
 struct adm6996_priv *priv = to_adm(dev);

 val->value.i = priv->enable_vlan;

 return 0;
}
