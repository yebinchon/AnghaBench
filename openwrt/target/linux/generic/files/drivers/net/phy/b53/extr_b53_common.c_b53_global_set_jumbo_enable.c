
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct b53_device {int enable_jumbo; } ;


 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_global_set_jumbo_enable(struct switch_dev *dev,
           const struct switch_attr *attr,
           struct switch_val *val)
{
 struct b53_device *priv = sw_to_b53(dev);

 priv->enable_jumbo = val->value.i;

 return 0;
}
