
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int RTL8366S_SGCR ;
 int RTL8366S_SGCR_EN_VLAN ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int ) ;

__attribute__((used)) static int rtl8366s_enable_vlan(struct rtl8366_smi *smi, int enable)
{
 return rtl8366_smi_rmwr(smi, RTL8366S_SGCR, RTL8366S_SGCR_EN_VLAN,
    (enable) ? RTL8366S_SGCR_EN_VLAN : 0);
}
