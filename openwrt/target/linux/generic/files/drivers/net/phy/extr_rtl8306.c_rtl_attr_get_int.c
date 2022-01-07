
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int id; int ofs; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int rtl_get (struct switch_dev*,int) ;
 int rtl_regs ;

__attribute__((used)) static int
rtl_attr_get_int(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 int idx = attr->id + (val->port_vlan * attr->ofs);

 if (idx >= ARRAY_SIZE(rtl_regs))
  return -EINVAL;

 val->value.i = rtl_get(dev, idx);
 return 0;
}
