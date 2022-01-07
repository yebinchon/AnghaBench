
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int rtl8366_get_pvid (struct rtl8366_smi*,int,int*) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

int rtl8366_sw_get_port_pvid(struct switch_dev *dev, int port, int *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 return rtl8366_get_pvid(smi, port, val);
}
