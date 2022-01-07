
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct adm6996_priv {scalar_t__* vlan_table; } ;


 int ADM_NUM_VLANS ;
 int ADM_VLAN_FILT (scalar_t__) ;
 int ADM_VLAN_MAP (int) ;
 int w16 (struct adm6996_priv*,int ,int ) ;

__attribute__((used)) static void
adm6996_apply_vlan_filters_6996l(struct adm6996_priv *priv)
{
 u8 ports;
 u16 reg;
 int i;

 for (i = 0; i < ADM_NUM_VLANS; i++) {
  ports = priv->vlan_table[i];

  if (ports == 0) {

   w16(priv, ADM_VLAN_MAP(i), 0);
   continue;
  } else {
   reg = ADM_VLAN_FILT(ports);
   w16(priv, ADM_VLAN_MAP(i), reg);
  }
 }
}
