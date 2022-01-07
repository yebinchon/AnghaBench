
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int __rtl8366_smi_write_reg (struct rtl8366_smi*,int ,int ,int) ;

int rtl8366_smi_write_reg_noack(struct rtl8366_smi *smi, u32 addr, u32 data)
{
 return __rtl8366_smi_write_reg(smi, addr, data, 0);
}
