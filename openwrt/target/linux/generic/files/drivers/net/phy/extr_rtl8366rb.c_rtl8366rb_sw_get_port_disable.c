
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366RB_NUM_PORTS ;
 int RTL8366RB_PECR ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_get_port_disable(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data;

 if (val->port_vlan >= RTL8366RB_NUM_PORTS)
  return -EINVAL;

 rtl8366_smi_read_reg(smi, RTL8366RB_PECR, &data);
 if (data & (1 << val->port_vlan))
  val->value.i = 1;
 else
  val->value.i = 0;

 return 0;
}
