
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
 int RTL8366RB_LED_CTRL_REG ;
 int RTL8366RB_NUM_LEDGROUPS ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_get_port_led(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data = 0;

 if (val->port_vlan >= RTL8366RB_NUM_LEDGROUPS)
  return -EINVAL;

 rtl8366_smi_read_reg(smi, RTL8366RB_LED_CTRL_REG, &data);
 val->value.i = (data >> (val->port_vlan * 4)) & 0x000F;

 return 0;
}
