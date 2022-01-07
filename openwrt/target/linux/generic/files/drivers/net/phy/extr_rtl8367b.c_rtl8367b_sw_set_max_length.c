
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


 int EINVAL ;
 int RTL8367B_SWC0_MAX_LENGTH_1522 ;
 int RTL8367B_SWC0_MAX_LENGTH_1536 ;
 int RTL8367B_SWC0_MAX_LENGTH_1552 ;
 int RTL8367B_SWC0_MAX_LENGTH_16000 ;
 int RTL8367B_SWC0_MAX_LENGTH_MASK ;
 int RTL8367B_SWC0_REG ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int ) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8367b_sw_set_max_length(struct switch_dev *dev,
         const struct switch_attr *attr,
         struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 max_len;

 switch (val->value.i) {
 case 0:
  max_len = RTL8367B_SWC0_MAX_LENGTH_1522;
  break;
 case 1:
  max_len = RTL8367B_SWC0_MAX_LENGTH_1536;
  break;
 case 2:
  max_len = RTL8367B_SWC0_MAX_LENGTH_1552;
  break;
 case 3:
  max_len = RTL8367B_SWC0_MAX_LENGTH_16000;
  break;
 default:
  return -EINVAL;
 }

 return rtl8366_smi_rmwr(smi, RTL8367B_SWC0_REG,
           RTL8367B_SWC0_MAX_LENGTH_MASK, max_len);
}
