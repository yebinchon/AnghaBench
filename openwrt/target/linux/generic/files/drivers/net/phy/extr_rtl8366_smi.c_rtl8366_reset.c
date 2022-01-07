
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_smi {TYPE_1__* ops; int (* hw_reset ) (struct rtl8366_smi*,int) ;} ;
struct TYPE_2__ {int (* reset_chip ) (struct rtl8366_smi*) ;} ;


 int RTL8366_SMI_HW_START_DELAY ;
 int RTL8366_SMI_HW_STOP_DELAY ;
 int msleep (int ) ;
 int stub1 (struct rtl8366_smi*,int) ;
 int stub2 (struct rtl8366_smi*,int) ;
 int stub3 (struct rtl8366_smi*) ;

__attribute__((used)) static int rtl8366_reset(struct rtl8366_smi *smi)
{
 if (smi->hw_reset) {
  smi->hw_reset(smi, 1);
  msleep(RTL8366_SMI_HW_STOP_DELAY);
  smi->hw_reset(smi, 0);
  msleep(RTL8366_SMI_HW_START_DELAY);
  return 0;
 }

 return smi->ops->reset_chip(smi);
}
