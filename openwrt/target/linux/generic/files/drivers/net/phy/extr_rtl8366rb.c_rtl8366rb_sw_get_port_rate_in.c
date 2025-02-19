
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {scalar_t__ port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366RB_BDTH_UNIT ;
 int RTL8366RB_IB_BDTH_MASK ;
 int RTL8366RB_IB_REG (scalar_t__) ;
 scalar_t__ RTL8366RB_NUM_PORTS ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_get_port_rate_in(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data;

 if (val->port_vlan >= RTL8366RB_NUM_PORTS)
  return -EINVAL;

 rtl8366_smi_read_reg(smi, RTL8366RB_IB_REG(val->port_vlan), &data);
 data &= RTL8366RB_IB_BDTH_MASK;
 if (data < RTL8366RB_IB_BDTH_MASK)
  data += 1;

 val->value.i = (int)data * RTL8366RB_BDTH_UNIT;

 return 0;
}
