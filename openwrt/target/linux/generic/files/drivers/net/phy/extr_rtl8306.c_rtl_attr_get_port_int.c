
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {scalar_t__ port_vlan; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;


 int EINVAL ;
 scalar_t__ RTL8306_NUM_PORTS ;
 int rtl_attr_get_int (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;

__attribute__((used)) static int
rtl_attr_get_port_int(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 if (val->port_vlan >= RTL8306_NUM_PORTS)
  return -EINVAL;
 return rtl_attr_get_int(dev, attr, val);
}
