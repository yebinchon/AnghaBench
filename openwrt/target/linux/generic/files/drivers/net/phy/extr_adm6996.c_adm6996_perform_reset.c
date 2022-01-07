
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996_priv {scalar_t__ model; int* vlan_id; scalar_t__* vlan_tagged; scalar_t__* vlan_table; scalar_t__* pvid; scalar_t__ vlan_enabled; scalar_t__ enable_vlan; } ;


 scalar_t__ ADM6996FC ;
 scalar_t__ ADM6996L ;
 scalar_t__ ADM6996M ;
 int ADM_NUM_PORTS ;
 int ADM_NUM_VLANS ;
 int ADM_PHYCFG_INIT ;
 int ADM_PHY_PORT (int) ;
 int ADM_PHY_PORTS ;
 int ADM_PORTCFG_CPU ;
 int ADM_PORTCFG_INIT ;
 int ADM_PORTCFG_PVID (int ) ;
 int ADM_VLAN_PRIOMAP ;
 int adm6996_apply_port_pvids (struct adm6996_priv*) ;
 int adm6996_disable_vlan (struct adm6996_priv*) ;
 int adm6996_disable_vlan_6996l (struct adm6996_priv*) ;
 int * adm_portcfg ;
 int w16 (struct adm6996_priv*,int ,int) ;

__attribute__((used)) static void
adm6996_perform_reset (struct adm6996_priv *priv)
{
 int i;


 for (i = 0; i < ADM_NUM_PORTS - 1; i++) {
  w16(priv, adm_portcfg[i], ADM_PORTCFG_INIT |
   ADM_PORTCFG_PVID(0));
 }
 w16(priv, adm_portcfg[5], ADM_PORTCFG_CPU);

 if (priv->model == ADM6996M || priv->model == ADM6996FC) {

  for (i = 0; i < ADM_PHY_PORTS; i++) {
   w16(priv, ADM_PHY_PORT(i), ADM_PHYCFG_INIT);
  }
 }

 priv->enable_vlan = 0;
 priv->vlan_enabled = 0;

 for (i = 0; i < ADM_NUM_PORTS; i++) {
  priv->pvid[i] = 0;
 }

 for (i = 0; i < ADM_NUM_VLANS; i++) {
  priv->vlan_id[i] = i;
  priv->vlan_table[i] = 0;
  priv->vlan_tagged[i] = 0;
 }

 if (priv->model == ADM6996M) {

  w16 (priv, ADM_VLAN_PRIOMAP, 0);

  adm6996_disable_vlan(priv);
  adm6996_apply_port_pvids(priv);
 } else if (priv->model == ADM6996L) {

  w16 (priv, ADM_VLAN_PRIOMAP, 0);

  adm6996_disable_vlan_6996l(priv);
  adm6996_apply_port_pvids(priv);
 }
}
