
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8367_platform_data {int extif1_cfg; int extif0_cfg; } ;
struct rtl8366_smi {TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ of_node; struct rtl8367_platform_data* platform_data; } ;


 int REG_RMW (struct rtl8366_smi*,int ,int,int) ;
 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8367B_NUM_PORTS ;
 int RTL8367B_PORTS_ALL ;
 int RTL8367B_PORT_MISC_CFG_EGRESS_MODE_MASK ;
 int RTL8367B_PORT_MISC_CFG_EGRESS_MODE_ORIGINAL ;
 int RTL8367B_PORT_MISC_CFG_EGRESS_MODE_SHIFT ;
 int RTL8367B_PORT_MISC_CFG_REG (int) ;
 int RTL8367B_SWC0_MAX_LENGTH_1536 ;
 int RTL8367B_SWC0_MAX_LENGTH_MASK ;
 int RTL8367B_SWC0_REG ;
 int RTL8367B_VLAN_INGRESS_REG ;
 int rtl8367b_extif_init (struct rtl8366_smi*,int,int ) ;
 int rtl8367b_extif_init_of (struct rtl8366_smi*,int,char*) ;
 int rtl8367b_init_regs (struct rtl8366_smi*) ;

__attribute__((used)) static int rtl8367b_setup(struct rtl8366_smi *smi)
{
 struct rtl8367_platform_data *pdata;
 int err;
 int i;

 pdata = smi->parent->platform_data;

 err = rtl8367b_init_regs(smi);
 if (err)
  return err;


 if (smi->parent->of_node) {
  err = rtl8367b_extif_init_of(smi, 0, "realtek,extif0");
  if (err)
   return err;

  err = rtl8367b_extif_init_of(smi, 1, "realtek,extif1");
  if (err)
   return err;
 } else {
  err = rtl8367b_extif_init(smi, 0, pdata->extif0_cfg);
  if (err)
   return err;

  err = rtl8367b_extif_init(smi, 1, pdata->extif1_cfg);
  if (err)
   return err;
 }


 REG_RMW(smi, RTL8367B_SWC0_REG, RTL8367B_SWC0_MAX_LENGTH_MASK,
  RTL8367B_SWC0_MAX_LENGTH_1536);





 REG_WR(smi, RTL8367B_VLAN_INGRESS_REG, RTL8367B_PORTS_ALL);




 for (i = 0; i < RTL8367B_NUM_PORTS; i++)
  REG_RMW(smi,
   RTL8367B_PORT_MISC_CFG_REG(i),
   RTL8367B_PORT_MISC_CFG_EGRESS_MODE_MASK <<
    RTL8367B_PORT_MISC_CFG_EGRESS_MODE_SHIFT,
   RTL8367B_PORT_MISC_CFG_EGRESS_MODE_ORIGINAL <<
    RTL8367B_PORT_MISC_CFG_EGRESS_MODE_SHIFT);

 return 0;
}
