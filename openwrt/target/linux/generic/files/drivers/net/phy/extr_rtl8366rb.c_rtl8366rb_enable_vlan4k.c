
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int RTL8366RB_SGCR ;
 int RTL8366RB_SGCR_EN_VLAN_4KTB ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int ,int ) ;

__attribute__((used)) static int rtl8366rb_enable_vlan4k(struct rtl8366_smi *smi, int enable)
{
 return rtl8366_smi_rmwr(smi, RTL8366RB_SGCR,
    RTL8366RB_SGCR_EN_VLAN_4KTB,
    (enable) ? RTL8366RB_SGCR_EN_VLAN_4KTB : 0);
}
