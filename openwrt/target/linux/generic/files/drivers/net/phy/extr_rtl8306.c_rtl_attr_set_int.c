
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int id; int ofs; scalar_t__ max; } ;
struct rtl_phyregs {int dummy; } ;
struct TYPE_5__ {int reg; scalar_t__ page; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int rtl_phy_restore (struct switch_dev*,int,struct rtl_phyregs*) ;
 int rtl_phy_save (struct switch_dev*,int,struct rtl_phyregs*) ;
 TYPE_2__* rtl_regs ;
 int rtl_set (struct switch_dev*,int,scalar_t__) ;

__attribute__((used)) static int
rtl_attr_set_int(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 int idx = attr->id + (val->port_vlan * attr->ofs);
 struct rtl_phyregs port;

 if (attr->id >= ARRAY_SIZE(rtl_regs))
  return -EINVAL;

 if ((attr->max > 0) && (val->value.i > attr->max))
  return -EINVAL;



 if ((val->port_vlan > 3) &&
  (rtl_regs[idx].reg == 22) &&
  (rtl_regs[idx].page == 0)) {

  rtl_phy_save(dev, val->port_vlan, &port);
  rtl_set(dev, idx, val->value.i);
  rtl_phy_restore(dev, val->port_vlan, &port);
 } else {
  rtl_set(dev, idx, val->value.i);
 }

 return 0;
}
