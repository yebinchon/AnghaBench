
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int ofs; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int rtl8366_enable_vlan (struct rtl8366_smi*,int ) ;
 int rtl8366_enable_vlan4k (struct rtl8366_smi*,int ) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

int rtl8366_sw_set_vlan_enable(struct switch_dev *dev,
          const struct switch_attr *attr,
          struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 int err;

 if (attr->ofs > 2)
  return -EINVAL;

 if (attr->ofs == 1)
  err = rtl8366_enable_vlan(smi, val->value.i);
 else
  err = rtl8366_enable_vlan4k(smi, val->value.i);

 return err;
}
