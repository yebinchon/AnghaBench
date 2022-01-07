
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
struct switch_val {TYPE_1__ value; int port_vlan; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_vlan_4k {int fid; } ;
struct rtl8366_smi {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* get_vlan_4k ) (struct rtl8366_smi*,int ,struct rtl8366_vlan_4k*) ;int (* is_vlan_valid ) (struct rtl8366_smi*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct rtl8366_smi*,int ) ;
 int stub2 (struct rtl8366_smi*,int ,struct rtl8366_vlan_4k*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

int rtl8366_sw_get_vlan_fid(struct switch_dev *dev,
       const struct switch_attr *attr,
       struct switch_val *val)
{
 struct rtl8366_vlan_4k vlan4k;
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 int err;

 if (!smi->ops->is_vlan_valid(smi, val->port_vlan))
  return -EINVAL;

 err = smi->ops->get_vlan_4k(smi, val->port_vlan, &vlan4k);
 if (err)
  return err;

 val->value.i = vlan4k.fid;

 return 0;
}
