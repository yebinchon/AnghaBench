
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {scalar_t__ port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366RB_BDTH_REG_DEFAULT ;
 int RTL8366RB_BDTH_SW_MAX ;
 int RTL8366RB_BDTH_UNIT ;
 int RTL8366RB_EB_BDTH_MASK ;
 int RTL8366RB_EB_PREIFG_MASK ;
 int RTL8366RB_EB_PREIFG_OFFSET ;
 int RTL8366RB_EB_PREIFG_REG ;
 int RTL8366RB_EB_REG (scalar_t__) ;
 scalar_t__ RTL8366RB_NUM_PORTS ;
 int RTL8366RB_QOS_DEFAULT_PREIFG ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_set_port_rate_out(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);

 if (val->port_vlan >= RTL8366RB_NUM_PORTS)
  return -EINVAL;

 rtl8366_smi_rmwr(smi, RTL8366RB_EB_PREIFG_REG,
  RTL8366RB_EB_PREIFG_MASK,
  (RTL8366RB_QOS_DEFAULT_PREIFG << RTL8366RB_EB_PREIFG_OFFSET));

 if (val->value.i > 0 && val->value.i < RTL8366RB_BDTH_SW_MAX)
  val->value.i = (val->value.i - 1) / RTL8366RB_BDTH_UNIT;
 else
  val->value.i = RTL8366RB_BDTH_REG_DEFAULT;

 return rtl8366_smi_rmwr(smi, RTL8366RB_EB_REG(val->port_vlan),
   RTL8366RB_EB_BDTH_MASK, val->value.i );

}
