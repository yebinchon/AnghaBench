
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int RTL8366RB_PMCR ;
 int RTL8366RB_PMCR_MIRROR_ISO ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366rb_sw_get_monitor_isolation_enable(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data;

 rtl8366_smi_read_reg(smi, RTL8366RB_PMCR, &data);
 if (data & RTL8366RB_PMCR_MIRROR_ISO)
  val->value.i = 1;
 else
  val->value.i = 0;

 return 0;
}
