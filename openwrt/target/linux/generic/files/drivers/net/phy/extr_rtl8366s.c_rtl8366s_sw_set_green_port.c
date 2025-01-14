
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; int port_vlan; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int rtl8366s_set_green_port (struct rtl8366_smi*,int ,int ) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366s_sw_set_green_port(struct switch_dev *dev,
          const struct switch_attr *attr,
          struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 return rtl8366s_set_green_port(smi, val->port_vlan, val->value.i);
}
