
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_vlan_mc {int vid; } ;
struct rtl8366_smi {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mc_index ) (struct rtl8366_smi*,int,int*) ;int (* get_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int stub1 (struct rtl8366_smi*,int,int*) ;
 int stub2 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;

__attribute__((used)) static int rtl8366_get_pvid(struct rtl8366_smi *smi, int port, int *val)
{
 struct rtl8366_vlan_mc vlanmc;
 int err;
 int index;

 err = smi->ops->get_mc_index(smi, port, &index);
 if (err)
  return err;

 err = smi->ops->get_vlan_mc(smi, index, &vlanmc);
 if (err)
  return err;

 *val = vlanmc.vid;
 return 0;
}
