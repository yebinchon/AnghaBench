
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8367B_NUM_PORTS ;
 int RTL8367B_NUM_VLANS ;
 int RTL8367B_VLAN_PVID_CTRL_MASK ;
 int RTL8367B_VLAN_PVID_CTRL_REG (int) ;
 int RTL8367B_VLAN_PVID_CTRL_SHIFT (int) ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int,int) ;

__attribute__((used)) static int rtl8367b_set_mc_index(struct rtl8366_smi *smi, int port, int index)
{
 if (port >= RTL8367B_NUM_PORTS || index >= RTL8367B_NUM_VLANS)
  return -EINVAL;

 return rtl8366_smi_rmwr(smi, RTL8367B_VLAN_PVID_CTRL_REG(port),
    RTL8367B_VLAN_PVID_CTRL_MASK <<
     RTL8367B_VLAN_PVID_CTRL_SHIFT(port),
    (index & RTL8367B_VLAN_PVID_CTRL_MASK) <<
     RTL8367B_VLAN_PVID_CTRL_SHIFT(port));
}
